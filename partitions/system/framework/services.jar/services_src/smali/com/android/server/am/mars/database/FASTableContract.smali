.class public abstract Lcom/android/server/am/mars/database/FASTableContract;
.super Ljava/lang/Object;
.source "FASTableContract.java"


# static fields
.field public static final DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

.field public static final FASQueryProjectionV1:[Ljava/lang/String;

.field public static final FASQueryProjectionV2:[Ljava/lang/String;

.field public static final FASQueryProjectionV3:[Ljava/lang/String;

.field public static final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field public static final SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final disableReasonProjection:[Ljava/lang/String;

.field public static final preBattetyUsageProjection:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const-string v0, "content://com.sec.android.sdhms.fasprovider/ForcedAppStandby"

    .line 6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.battery.bridge"

    .line 7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "prevCurrent"

    .line 28
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    const-string v0, "disableReason"

    .line 29
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string v10, "disableType"

    const-string v11, "disableResetTime"

    .line 31
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string v10, "disableType"

    const-string v11, "disableResetTime"

    const-string/jumbo v12, "prevCurrent"

    .line 33
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string v10, "disableType"

    const-string v11, "disableResetTime"

    const-string/jumbo v12, "prevCurrent"

    const-string v13, "disableReason"

    .line 35
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm/settings"

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm/DefaultAllowedList"

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.appstart/appstart_record"

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm/FreezeExcludeList"

    .line 109
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public static convertDBValueToDisableReason(Ljava/lang/String;)I
    .locals 1

    const-string v0, "default"

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "added_from_mars_auto"

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "added_from_user_manual"

    .line 218
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "deleted_from_mars_auto"

    .line 220
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string v0, "deleted_from_user_manual"

    .line 222
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    const-string v0, "added_from_mars_auto_specific"

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    const-string v0, "added_from_anomaly_manual"

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x20

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public static convertDBValueToState(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "0"

    .line 162
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 164
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "2"

    .line 166
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-string v1, "3"

    .line 168
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x8

    goto :goto_0

    :cond_4
    const-string v1, "4"

    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 v0, 0x10

    :cond_5
    :goto_0
    return v0
.end method

.method public static convertDisableReasonToDBValue(I)Ljava/lang/String;
    .locals 1

    .line 0
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    const-string p0, "added_from_anomaly_manual"

    return-object p0

    :cond_1
    const-string p0, "added_from_mars_auto_specific"

    return-object p0

    :cond_2
    const-string p0, "deleted_from_user_manual"

    return-object p0

    :cond_3
    const-string p0, "deleted_from_mars_auto"

    return-object p0

    :cond_4
    const-string p0, "added_from_user_manual"

    return-object p0

    :cond_5
    const-string p0, "added_from_mars_auto"

    return-object p0

    :cond_6
    const-string p0, "default"

    return-object p0
.end method

.method public static convertFASReasonToValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "default"

    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v1, "added_from_mars_auto"

    .line 123
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v1, "added_from_user_manual"

    .line 125
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string v1, "added_from_anomaly_auto"

    .line 127
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string v1, "added_from_anomaly_manual"

    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0x8

    return p0

    :cond_5
    const-string v1, "added_from_pre_o"

    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x10

    return p0

    :cond_6
    const-string v1, "added_from_policy_in_china"

    .line 133
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p0, 0x20

    return p0

    :cond_7
    const-string v1, "added_from_unknown"

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x40

    return p0

    :cond_8
    const-string v1, "deleted_from_mars_auto"

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x80

    return p0

    :cond_9
    const-string v1, "deleted_from_user_manual"

    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p0, 0x100

    return p0

    :cond_a
    const-string v1, "deleted_from_post_o"

    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 p0, 0x200

    return p0

    :cond_b
    const-string v1, "deleted_from_policy_in_china"

    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 p0, 0x800

    return p0

    :cond_c
    const-string v1, "deleted_from_unknown"

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x1000

    return p0

    :cond_d
    return v0
.end method

.method public static convertFASTypeToReason(I)Ljava/lang/String;
    .locals 1

    .line 0
    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    const/16 v0, 0x40

    if-eq p0, v0, :cond_5

    const/16 v0, 0x80

    if-eq p0, v0, :cond_4

    const/16 v0, 0x100

    if-eq p0, v0, :cond_3

    const/16 v0, 0x200

    if-eq p0, v0, :cond_2

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    const-string p0, "deleted_from_unknown"

    return-object p0

    :cond_1
    const-string p0, "deleted_from_policy_in_china"

    return-object p0

    :cond_2
    const-string p0, "deleted_from_post_o"

    return-object p0

    :cond_3
    const-string p0, "deleted_from_user_manual"

    return-object p0

    :cond_4
    const-string p0, "deleted_from_mars_auto"

    return-object p0

    :cond_5
    const-string p0, "added_from_unknown"

    return-object p0

    :cond_6
    const-string p0, "added_from_policy_in_china"

    return-object p0

    :cond_7
    const-string p0, "added_from_pre_o"

    return-object p0

    :cond_8
    const-string p0, "added_from_anomaly_manual"

    return-object p0

    :cond_9
    const-string p0, "added_from_anomaly_auto"

    return-object p0

    :cond_a
    const-string p0, "added_from_user_manual"

    return-object p0

    :cond_b
    const-string p0, "added_from_mars_auto"

    return-object p0

    :cond_c
    const-string p0, "default"

    return-object p0
.end method

.method public static convertStateToDBExtrasValue(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-string p0, "4"

    return-object p0

    :cond_1
    const-string p0, "3"

    return-object p0

    :cond_2
    const-string p0, "2"

    return-object p0

    :cond_3
    const-string p0, "1"

    return-object p0
.end method
