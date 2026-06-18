# Systems Builder Examples

## Example 1: Meeting Follow-Through System

Input:

> Build a system so meeting actions do not disappear.

Output:

```text
System purpose:
Make commitments visible, owned, and reviewed.

Problem it solves:
Meetings end with discussion but not reliable follow-through.

Trigger:
Any recurring team meeting where actions are assigned.

Owner:
Meeting owner.

Inputs:
Prior commitment list, current agenda, blockers, new decisions.

Workflow:
1. Start by reviewing prior commitments.
2. Mark each item done, blocked, changed, or carried forward.
3. Discuss only blocked or changed items.
4. Capture new actions with owner and due date.
5. Close by reading back commitments.

Decision points:
Escalate blocked items that need leadership decision.
Remove actions that no longer matter.

Rhythm:
Review at the start of every recurring meeting.

Artifact:
Commitment tracker with action, owner, due date, status, and review note.

Review:
After 4 meetings, check whether fewer actions are carried forward without explanation.
```

## Example 2: Metric Review System

Input:

> Build a simple system for reviewing on-time delivery.

Output:

```text
System purpose:
Turn on-time delivery from a reported number into a managed behavior.

Problem it solves:
The metric is visible, but misses are not driving decisions.

Trigger:
Weekly operating review.

Owner:
Operations leader.

Inputs:
On-time delivery rate, late orders, root cause notes, customer impact, open actions.

Workflow:
1. Review the weekly number.
2. Focus only on exceptions and misses.
3. Group misses by cause.
4. Assign corrective actions.
5. Escalate decisions that require cross-functional help.

Decision points:
Which root cause gets priority?
What changes this week?
Who owns the change?

Rhythm:
Weekly 30-minute review.

Artifact:
Delivery exception log.

Review:
Monthly review of trend, repeated causes, and completed corrective actions.
```

## Example 3: Intake System

Input:

> Our team gets random requests from everywhere. Build a better intake system.

Output:

```text
System purpose:
Create one visible path for requests so the team can prioritize and say no cleanly.

Problem it solves:
Work enters through side channels and creates hidden commitments.

Trigger:
Any new request for team time, analysis, support, or project work.

Owner:
Team lead owns prioritization.

Inputs:
Request, business reason, due date, requester, required decision, impact.

Workflow:
1. Capture request in one intake list.
2. Check whether it supports current priorities.
3. Estimate effort and urgency.
4. Accept, defer, reject, or ask for more clarity.
5. Communicate the decision to the requester.

Decision points:
Does this support current priorities?
What work would this displace?
Who approves the tradeoff?

Rhythm:
Twice-weekly intake review.

Artifact:
Request intake board.

Review:
Monthly review of request volume, accepted work, deferred work, and repeated request patterns.
```
