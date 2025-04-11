.class public Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# instance fields
.field public final alerting:I

.field public final assistant_hash:I

.field public final assistant_ranking_score:F

.field public final category:Ljava/lang/String;

.field public final channel_id_hash:I

.field public final event_id:I

.field public final group_id_hash:I

.field public final group_instance_id:I

.field public final importance:I

.field public final importance_asst:I

.field public final importance_initial:I

.field public final importance_initial_source:I

.field public final importance_source:I

.field public final instance_id:I

.field public final is_foreground_service:Z

.field public final is_group_summary:Z

.field public final is_non_dismissible:Z

.field public final is_ongoing:Z

.field public final notification_id_hash:I

.field public final num_people:I

.field public final package_name:Ljava/lang/String;

.field public final position:I

.field public post_duration_millis:J

.field public final style:I

.field public final timeout_millis:J

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    .line 501
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    .line 502
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getInstanceId()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    .line 504
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNotificationIdHash()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    .line 505
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getChannelIdHash()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    .line 506
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getGroupIdHash()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    if-nez p5, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    .line 508
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    .line 509
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object p2, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    .line 511
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    .line 512
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    .line 513
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p2}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    .line 514
    iput p4, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    .line 515
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanationCode()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    .line 516
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getInitialImportance()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    .line 517
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getInitialImportanceExplanationCode()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    .line 518
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getAssistantImportance()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    .line 519
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getAssistantHash()I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    .line 520
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    .line 521
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    .line 522
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p2}, Lcom/android/server/notification/NotificationRecordLogger;->isForegroundService(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    .line 523
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    .line 524
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p1}, Lcom/android/server/notification/NotificationRecordLogger;->isNonDismissible(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    return-void
.end method
