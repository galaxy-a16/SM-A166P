.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPhoneApp:Ljava/lang/String;

.field public final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field public final mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mSortByInterruptiveness:Z

.field public final mStateLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDefaultPhoneApp(Lcom/android/server/notification/NotificationComparator;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultPhoneApp(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mStateLock:Ljava/lang/Object;

    .line 231
    new-instance v1, Lcom/android/server/notification/NotificationComparator$1;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 54
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    new-instance v1, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 57
    invoke-static {}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags;->getResolver()Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;

    move-result-object p1

    sget-object v0, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$NotificationFlags;->NO_SORT_BY_INTERRUPTIVENESS:Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;

    invoke-interface {p1, v0}, Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$FlagResolver;->isEnabled(Lcom/android/internal/config/sysui/SystemUiSystemPropertiesFlags$Flag;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationComparator;->mSortByInterruptiveness:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 6

    .line 63
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 64
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eq v5, v2, :cond_2

    .line 70
    invoke-static {v5, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    :goto_2
    mul-int/lit8 p0, p0, -0x1

    return p0

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 76
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 81
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 89
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eq v2, v3, :cond_5

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto :goto_2

    .line 96
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eq v2, v3, :cond_6

    .line 99
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto :goto_2

    .line 103
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 104
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    .line 106
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_8

    mul-int/lit8 v4, v4, -0x1

    return v4

    :cond_7
    if-eq v2, v3, :cond_8

    .line 115
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto :goto_2

    .line 118
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    .line 119
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eq v2, v3, :cond_9

    .line 121
    invoke-static {v2, v3}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto :goto_2

    :cond_9
    if-eq v0, v1, :cond_a

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto/16 :goto_2

    :cond_a
    if-eqz v4, :cond_b

    mul-int/lit8 v4, v4, -0x1

    return v4

    .line 135
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    .line 136
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 139
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto/16 :goto_2

    .line 142
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 143
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    if-eq v0, v1, :cond_d

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto/16 :goto_2

    .line 149
    :cond_d
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationComparator;->mSortByInterruptiveness:Z

    if-eqz p0, :cond_e

    .line 150
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result p0

    .line 151
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eq p0, v0, :cond_e

    .line 153
    invoke-static {p0, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p0

    goto/16 :goto_2

    .line 158
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    goto/16 :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p0

    return p0
.end method

.method public final isCallCategory(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    const-string v0, "call"

    .line 214
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCallStyle(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 219
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    const-class p1, Landroid/app/Notification$CallStyle;

    invoke-virtual {p0, p1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 228
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 162
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    move-result p0

    return p0
.end method

.method public isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 192
    iget-object p0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result p0

    return p0
.end method

.method public final isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 169
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCallStyle(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 178
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCallCategory(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    return v2
.end method

.method public isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 182
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 210
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result p0

    return p0
.end method

.method public isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 196
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    .line 199
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android"

    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const-string p1, "com.android.systemui"

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method
