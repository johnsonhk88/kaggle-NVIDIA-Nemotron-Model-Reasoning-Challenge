# NVIDIA Nemotron Model Reasoning Challenge - Dataset

## Dataset Description

This dataset comprises a collection of logical reasoning puzzles requiring the identification and application of underlying transformation rules. The puzzles cover various domains, such as bit manipulation and algebraic equations.

---

## File Information

### `train.csv`

The training set containing puzzles and their corresponding solutions.

| Column | Description |
| --- | --- |
| `id` | A unique identifier for each puzzle. |
| `prompt` | The puzzle description, including input-output examples and the specific instance to be solved. |
| `answer` | The ground truth solution for the puzzle. |

### `test.csv`

A sample test set provided to help author your submissions.

*Note: When your submission is scored, this file will be replaced by a live test set containing several hundred problems.*

| Column | Description |
| --- | --- |
| `id` | A unique identifier for each puzzle. |
| `prompt` | As in `train.csv`. |

---

## Submission Requirements

Your submission must be a file named `submission.zip` containing a **LoRA adapter**. Please refer to the competition's Evaluation page for specific technical constraints and requirements.

---

## License

**Attribution 4.0 International (CC BY 4.0)**