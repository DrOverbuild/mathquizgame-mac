//
//  DifficultyLevel.swift
//  MathQuizGame-Mac
//
//  Created by Jasper Reddin on 8/12/14.
//  Copyright (c) 2014 TwoGuysBrickfilms. All rights reserved.
//

import Foundation

enum DifficultyLevel{
	case LEVEL_NOT_SET, ELEMENTARY, MIDDLE_SCHOOL, HIGH_SCHOOL, CUSTOM(minRange: Int, maxRange: Int, operations: String, numberOfQuestions: Int)
}