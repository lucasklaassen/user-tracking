const router = require("express").Router();

// Put all your server routes in here
router.use("/", (req, res) => {
    res.json({
        hello: 'world'
    })
});

module.exports = router;