.class public Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# instance fields
.field public final AUTHORITY_SCPM_URI:Landroid/net/Uri;

.field public final CONTENT_SCPM_URI:Landroid/net/Uri;

.field public final POLICY_ITEMS:[Ljava/lang/String;

.field public final POLICY_SCPM_PROJECTION:[Ljava/lang/String;

.field public final POLICY_SCPM_URI:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mCtx:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .locals 8

    .line 1033
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "item"

    const-string v1, "data1"

    const-string v2, "data2"

    const-string v3, "data3"

    const-string v4, "data4"

    const-string v5, "data5"

    .line 1022
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm.policy"

    .line 1026
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    .line 1027
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    const-string v1, "AppsyncPolicy"

    .line 1028
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 1029
    aget-object v1, p1, v0

    const/4 v0, 0x1

    aget-object v2, p1, v0

    const/4 v0, 0x2

    aget-object v3, p1, v0

    const/4 v0, 0x3

    aget-object v4, p1, v0

    const/4 v0, 0x4

    aget-object v5, p1, v0

    const/4 v0, 0x5

    aget-object v6, p1, v0

    const-string v7, "category"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    .line 1034
    iput-object p2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mCtx:Landroid/content/Context;

    .line 1035
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAllowlistPkgFromSCPM()Ljava/util/ArrayList;
    .locals 8

    const-string v0, "CAT_ALLOW_PKGS"

    .line 1169
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1170
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1178
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1180
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1181
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    .line 1190
    :cond_2
    :try_start_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_4

    const-string v7, ""

    .line 1195
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 1198
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1201
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getBlocklistPkgFromSCPM()Ljava/util/ArrayList;
    .locals 8

    const-string v0, "CAT_BLOCK_PKGS"

    .line 1207
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1208
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1216
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1218
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1219
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    .line 1228
    :cond_2
    :try_start_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_4

    const-string v7, ""

    .line 1233
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 1236
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1239
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getInexactWindowFromSCPM()J
    .locals 7

    const-string v0, "CAT_WIN_MILLIS"

    .line 1087
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1088
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 1096
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1099
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_1
    const-string/jumbo v2, "item"

    .line 1103
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1107
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1113
    :cond_2
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1119
    throw v0

    :goto_0
    return-wide v0
.end method

.method public getSuspiciousTagFromSCPM()Ljava/util/ArrayList;
    .locals 9

    const-string v0, "CAT_SUSP_PKGS"

    .line 1131
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1132
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1140
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1142
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1143
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    .line 1152
    :cond_2
    :try_start_0
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_4

    const-string v7, ""

    .line 1157
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 1160
    :cond_3
    iget-object v7, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mgetPackageTag(Lcom/android/server/alarm/AppSyncInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1163
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getSuspiciousTimeLimitFromSCPM()J
    .locals 7

    const-string v0, "CAT_SUSP_MILLIS"

    .line 1050
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1051
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    .line 1059
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1062
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_1
    const-string/jumbo v2, "item"

    .line 1066
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1070
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1076
    :cond_2
    :try_start_0
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    :catch_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1082
    throw v0

    :goto_0
    return-wide v0
.end method

.method public isSCPMAvailable()Z
    .locals 2

    .line 1039
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.sm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
