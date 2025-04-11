.class public abstract Lcom/android/server/stats/pull/SettingsStatsUtil;
.super Ljava/lang/Object;
.source "SettingsStatsUtil.java"


# static fields
.field public static final GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field public static final SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

.field public static final SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 47
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "GlobalFeature__boolean_whitelist"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "GlobalFeature__integer_whitelist"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "GlobalFeature__float_whitelist"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v7, "GlobalFeature__string_whitelist"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 57
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "SecureFeature__boolean_whitelist"

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SecureFeature__integer_whitelist"

    invoke-direct {v1, v3, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v5, "SecureFeature__float_whitelist"

    invoke-direct {v3, v5, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v7, "SecureFeature__string_whitelist"

    invoke-direct {v5, v7, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v3, v5}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    .line 67
    new-instance v0, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v1, "SystemFeature__boolean_whitelist"

    invoke-direct {v0, v1, v2}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v2, "SystemFeature__integer_whitelist"

    invoke-direct {v1, v2, v4}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v3, "SystemFeature__float_whitelist"

    invoke-direct {v2, v3, v6}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    const-string v4, "SystemFeature__string_whitelist"

    invoke-direct {v3, v4, v8}, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    move-result-object v0

    sput-object v0, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    return-void
.end method

.method public static createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;
    .locals 6

    .line 159
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 161
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p0

    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 168
    invoke-virtual {p1, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1, v2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/16 :goto_3

    :cond_0
    const/4 p1, 0x1

    if-eq p4, p1, :cond_4

    const/4 p1, 0x2

    const-string v3, "Can not parse value to float: "

    const-string v4, "SettingsStatsUtil"

    if-eq p4, p1, :cond_3

    const/4 p1, 0x3

    if-eq p4, p1, :cond_2

    const/4 p1, 0x4

    if-eq p4, p1, :cond_1

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected value type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move p1, v0

    goto :goto_2

    .line 187
    :cond_2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    :cond_3
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 182
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p1, v0

    :goto_1
    move-object p2, v2

    goto :goto_2

    :cond_4
    const-string p1, "1"

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    move-object p2, v2

    move v5, v0

    move v0, p1

    move p1, v5

    .line 198
    :goto_2
    invoke-virtual {p0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p4

    .line 199
    invoke-virtual {p4, v0}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    move-result-object p4

    .line 200
    invoke-virtual {p4, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 201
    invoke-virtual {p1, v1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 205
    :goto_3
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    return-object p0
.end method

.method public static getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;
    .locals 3

    const-string/jumbo v0, "settings_stats"

    .line 139
    invoke-static {v0, p0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x3

    .line 143
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 146
    :try_start_0
    invoke-static {p0}, Lcom/android/service/nano/StringListParamProto;->parseFrom([B)Lcom/android/service/nano/StringListParamProto;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SettingsStatsUtil"

    const-string v2, "Error parsing string list proto"

    .line 148
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v1
.end method

.method public static logGlobalSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 12

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 84
    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->GLOBAL_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 85
    iget-object v6, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    iget-object v6, v6, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 90
    invoke-static {p0, v9, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 91
    iget v11, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    invoke-static {p1, v9, v10, p2, v11}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static logSecureSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 12

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 122
    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SECURE_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 123
    iget-object v6, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 127
    :cond_0
    iget-object v6, v6, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 128
    invoke-static {p0, v9, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 129
    iget v11, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    invoke-static {p1, v9, v10, p2, v11}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static logSystemSettings(Landroid/content/Context;II)Ljava/util/List;
    .locals 12

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 103
    sget-object v1, Lcom/android/server/stats/pull/SettingsStatsUtil;->SYSTEM_SETTINGS:[Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 104
    iget-object v6, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mFlagName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/stats/pull/SettingsStatsUtil;->getList(Ljava/lang/String;)Lcom/android/service/nano/StringListParamProto;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 108
    :cond_0
    iget-object v6, v6, Lcom/android/service/nano/StringListParamProto;->element:[Ljava/lang/String;

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_1

    aget-object v9, v6, v8

    .line 109
    invoke-static {p0, v9, p2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 110
    iget v11, v5, Lcom/android/server/stats/pull/SettingsStatsUtil$FlagsData;->mDataType:I

    invoke-static {p1, v9, v10, p2, v11}, Lcom/android/server/stats/pull/SettingsStatsUtil;->createStatsEvent(ILjava/lang/String;Ljava/lang/String;II)Landroid/util/StatsEvent;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
