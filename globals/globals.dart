// ignore_for_file: prefer_typing_uninitialized_variables

library globals;

var name,
    age,
    height,
    wieght,
    gender,
    bmi,
    today,
    ishealthy,
    requiredCalories,
    isUser,
    target,
    healthStatus;

List<bool> isEntered = [
  false,
  false,
  false,
  false,
];

List<String> passkey = [
  "0",
  "0",
  "0",
  "0",
];

List<String> otp = [
  "2",
  "0",
  "0",
  "2",
];

var mentalbg;

bool mentalRecorded = false;

int hydrationTarget = 2000;

double hydrationProgress = 0;

const foodDiet = {
  "Sunday": [
    [
      "Poori",
    ],
    [
      "Rice",
      "Rasam",
      "Curd",
      "Cabbage",
      "Garlic Soup",
    ],
    [
      "PasiParupu",
    ],
    [
      "Rice",
      "Dhal Soup",
    ],
  ],
  "Monday": [
    [
      "Idly",
      "Kesari",
      "Vada",
    ],
    [
      "",
      "",
      "",
    ],
    [],
    [],
  ],
  "Tuesday": [
    [],
    [],
    [],
    [],
  ],
  "Wednesday": [
    [],
    [],
    [],
    [],
  ],
  "Thursday": [
    [],
    [],
    [],
    [],
  ],
  "Friday": [
    [],
    [],
    [],
    [],
  ],
  "Saturday": [
    [],
    [],
    [],
    [],
  ],
};
