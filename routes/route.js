// routes.js

const express = require("express");
const db = require("../database/db");

const router = express.Router();

router.post("/register/parents", (req, res) => {
  const { parent_id, email, fullname, profile_picture_url } = req.body;
  const sql =
    "INSERT INTO parent_db (parent_id, email, fullname, profile_picture_url) VALUES (?, ?, ?, ?)";
  db.query(
    sql,
    [parent_id, email, fullname, profile_picture_url],
    (err, result) => {
      if (err) {
        return res
          .status(500)
          .json({ status: 500, error: "Internal Server Error" });
      }
      res.json({ message: "Parent added successfully" });
    }
  );
});

router.get("/parents/:parent_id", (req, res) => {
  const { parent_id } = req.params;
  const sql = "SELECT * FROM parent_db WHERE parent_id = ?";

  db.query(sql, [parent_id], (err, result) => {
    if (err) {
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (result.length === 0) {
      return res.status(404).json({ error: "Parent not found" });
    }
    const parentData = result[0];
    res.json({ status: 200, data: parentData });
  });
});

router.post("/register/children", (req, res) => {
  const { child_id, parent_id, fullname, point } = req.body;
  const sql =
    "INSERT INTO child_db (child_id, parent_id, fullname, point) VALUES (?, ?, ?, ?)";
  db.query(sql, [child_id, parent_id, fullname, point], (err, result) => {
    if (err) {
      return res
        .status(500)
        .json({ status: 500, error: "Internal Server Error" });
    }
    res.json({ message: "Child added successfully" });
  });
});

router.get("/children/:child_id", (req, res) => {
  const { child_id } = req.params;
  const sql = "SELECT * FROM child_db WHERE child_id = ?";

  db.query(sql, [child_id], (err, result) => {
    if (err) {
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (result.length === 0) {
      return res.status(404).json({ error: "Child not found" });
    }
    const childData = result[0];
    res.json({ status: 200, data: childData });
  });
});

router.get("/children/tasks/:task_id", (req, res) => {
  const { task_id } = req.params;
  const sql = "SELECT * FROM task_db WHERE task_id = ?";

  db.query(sql, [task_id], (err, result) => {
    if (err) {
      return res.status(500).json({ error: "Internal Server Error" });
    }
    if (result.length === 0) {
      return res.status(404).json({ error: "Child not found" });
    }
    const childData = result[0];
    res.json({ status: 200, data: childData });
  });
});

router.post("/children/task", (req, res) => {
  const {
    task_id,
    child_id,
    parent_id,
    title,
    deadline,
    point,
    description,
    status,
    proof_url,
    parent_comment,
  } = req.body;
  const sql =
    "INSERT INTO task_db (task_id, child_id, parent_id, title, deadline, point, description, status, proof_url, parent_comment) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
  db.query(
    sql,
    [
      task_id,
      child_id,
      parent_id,
      title,
      deadline,
      point,
      description,
      status,
      proof_url,
      parent_comment,
    ],
    (err, result) => {
      if (err) {
        return res
          .status(500)
          .json({ status: 500, error: "Internal Server Error" });
      }
      res.json({ message: "Child added successfully" });
    }
  );
});

module.exports = router;
