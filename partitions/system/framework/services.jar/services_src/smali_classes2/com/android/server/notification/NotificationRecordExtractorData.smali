.class public final Lcom/android/server/notification/NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "NotificationRecordExtractorData.java"


# instance fields
.field public final mAllowBubble:Z

.field public final mChannel:Landroid/app/NotificationChannel;

.field public final mGroupKey:Ljava/lang/String;

.field public final mImportance:I

.field public final mIsBubble:Z

.field public final mIsConversation:Z

.field public final mOverridePeople:Ljava/util/ArrayList;

.field public final mPosition:I

.field public final mProposedImportance:I

.field public final mRankingScore:F

.field public final mSensitiveContent:Z

.field public final mShowBadge:Z

.field public final mSmartReplies:Ljava/util/ArrayList;

.field public final mSnoozeCriteria:Ljava/util/ArrayList;

.field public final mSuppressVisually:Ljava/lang/Integer;

.field public final mSystemSmartActions:Ljava/util/ArrayList;

.field public final mUserSentiment:Ljava/lang/Integer;

.field public final mVisibility:I


# direct methods
.method public constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZ)V
    .locals 2

    move-object v0, p0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 58
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    move v1, p2

    .line 59
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    move v1, p3

    .line 60
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    move v1, p4

    .line 61
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    move v1, p5

    .line 62
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    move-object v1, p6

    .line 63
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    move-object v1, p7

    .line 64
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    move-object v1, p8

    .line 65
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    move-object v1, p9

    .line 66
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    move-object v1, p10

    .line 67
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    move-object v1, p11

    .line 68
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    move-object v1, p12

    .line 69
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    move-object v1, p13

    .line 70
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    move/from16 v1, p14

    .line 71
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    move/from16 v1, p15

    .line 72
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    move/from16 v1, p16

    .line 73
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    move/from16 v1, p17

    .line 74
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    move/from16 v1, p18

    .line 75
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    return-void
.end method


# virtual methods
.method public hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    .line 108
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 109
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 112
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 113
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 116
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    .line 117
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    .line 118
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    .line 119
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    .line 120
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    .line 81
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    .line 82
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    .line 83
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    .line 84
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    .line 85
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 86
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 90
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    .line 91
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 94
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    .line 95
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getProposedImportance()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    .line 96
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasSensitiveContent()Z

    move-result p1

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
