{
	"contents": {
		"ef32f399-d8cf-4c97-8062-714d74a07b6c": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "pricechangeauthorization",
			"subject": "PriceChangeAuthorization",
			"name": "PriceChangeAuthorization",
			"documentation": "Price Change Authorization Process",
			"lastIds": "462d6cb1-ba1f-4763-943a-c492d41c63b6",
			"events": {
				"21ec3eed-48a5-4fbe-ae3f-e899017dd6a3": {
					"name": "Start"
				},
				"5a98d2d5-bdce-4277-b2b2-95917f9a9555": {
					"name": "End"
				}
			},
			"activities": {
				"30c77e34-b3bb-4116-a922-7e1275a191b5": {
					"name": "PCA Approver Task"
				}
			},
			"sequenceFlows": {
				"836357e1-ff7b-4841-baad-4db3343eff98": {
					"name": "SequenceFlow1"
				},
				"f7c38e5c-e71a-4208-9021-0ae2f2a4a979": {
					"name": "SequenceFlow2"
				}
			},
			"diagrams": {
				"39308edf-af2c-4308-8ede-a26aba5852e4": {}
			}
		},
		"21ec3eed-48a5-4fbe-ae3f-e899017dd6a3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start",
			"sampleContextRefs": {
				"c13c4b3a-e63a-45f7-9c92-2fae94c292de": {}
			}
		},
		"5a98d2d5-bdce-4277-b2b2-95917f9a9555": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "End"
		},
		"836357e1-ff7b-4841-baad-4db3343eff98": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "21ec3eed-48a5-4fbe-ae3f-e899017dd6a3",
			"targetRef": "30c77e34-b3bb-4116-a922-7e1275a191b5"
		},
		"39308edf-af2c-4308-8ede-a26aba5852e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"7ff55180-5202-4c88-8cdf-d67c75ea1a9b": {},
				"fdfedc8a-e108-42fb-ac2d-264f6cb949c2": {},
				"db8a9373-c6ba-4c60-984a-004765980d4d": {},
				"fee96fd5-db95-4f4e-b25b-6477ff1bb641": {},
				"c4c47d8a-0ff5-4193-ad40-8bd1f709bd7a": {}
			}
		},
		"7ff55180-5202-4c88-8cdf-d67c75ea1a9b": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 103,
			"y": 59,
			"width": 32,
			"height": 32,
			"object": "21ec3eed-48a5-4fbe-ae3f-e899017dd6a3"
		},
		"fdfedc8a-e108-42fb-ac2d-264f6cb949c2": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 532,
			"y": 345,
			"width": 35,
			"height": 35,
			"object": "5a98d2d5-bdce-4277-b2b2-95917f9a9555"
		},
		"db8a9373-c6ba-4c60-984a-004765980d4d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "119,75 209.6207275390625,75 209.6207275390625,218.75 333.741455078125,218.75",
			"sourceSymbol": "7ff55180-5202-4c88-8cdf-d67c75ea1a9b",
			"targetSymbol": "fee96fd5-db95-4f4e-b25b-6477ff1bb641",
			"object": "836357e1-ff7b-4841-baad-4db3343eff98"
		},
		"462d6cb1-ba1f-4763-943a-c492d41c63b6": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"timereventdefinition": 1,
			"sequenceflow": 2,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1
		},
		"30c77e34-b3bb-4116-a922-7e1275a191b5": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Price change approval for ${context.requestId}",
			"description": "Approval of Price change approval for ${context.requestId} Supplier Name : ${context.supplierName} Annual Impact, ${context.annualImpact}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "P000057",
			"recipientGroups": "PCA_APPROVERS",
			"formReference": "/forms/PriceChangeAuthorization/PCAApprover.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "pcaapprover"
			}, {
				"key": "formRevision",
				"value": "dev"
			}],
			"id": "usertask1",
			"name": "PCA Approver Task",
			"dueDateRef": "f4f0c22f-d7cb-413e-ab89-fb5cff4a6d49"
		},
		"fee96fd5-db95-4f4e-b25b-6477ff1bb641": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 283.741455078125,
			"y": 188.75,
			"width": 100,
			"height": 60,
			"object": "30c77e34-b3bb-4116-a922-7e1275a191b5"
		},
		"f7c38e5c-e71a-4208-9021-0ae2f2a4a979": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "30c77e34-b3bb-4116-a922-7e1275a191b5",
			"targetRef": "5a98d2d5-bdce-4277-b2b2-95917f9a9555"
		},
		"c4c47d8a-0ff5-4193-ad40-8bd1f709bd7a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "333.741455078125,218.75 458.1207275390625,218.75 458.1207275390625,362.5 549.5,362.5",
			"sourceSymbol": "fee96fd5-db95-4f4e-b25b-6477ff1bb641",
			"targetSymbol": "fdfedc8a-e108-42fb-ac2d-264f6cb949c2",
			"object": "f7c38e5c-e71a-4208-9021-0ae2f2a4a979"
		},
		"c13c4b3a-e63a-45f7-9c92-2fae94c292de": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/PriceChangeAuthorization/PCAInitialContext.json",
			"id": "default-start-context"
		},
		"f4f0c22f-d7cb-413e-ab89-fb5cff4a6d49": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P5D",
			"id": "timereventdefinition1"
		}
	}
}