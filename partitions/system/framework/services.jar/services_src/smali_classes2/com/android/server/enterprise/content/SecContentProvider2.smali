.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "SecContentProvider2.java"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public final DEBUG:Z

.field public mContext:Landroid/content/Context;

.field public mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 139
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "ApplicationPolicy"

    const/4 v2, 0x1

    const-string v3, "com.sec.knox.provider2"

    .line 140
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ClientCertificateManager"

    const/4 v2, 0x2

    .line 141
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DeviceAccountPolicy"

    const/4 v2, 0x3

    .line 142
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EmailPolicy"

    const/4 v2, 0x6

    .line 143
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EmailAccountPolicy"

    const/4 v2, 0x7

    .line 144
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseKnoxManagerPolicy"

    const/16 v2, 0x8

    .line 145
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseContainerPolicy"

    const/16 v2, 0x9

    .line 146
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseContainerService"

    const/16 v2, 0xa

    .line 147
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseDeviceManager"

    const/16 v2, 0xb

    .line 148
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ExchangeAccountPolicy"

    const/16 v2, 0xc

    .line 149
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KioskMode"

    const/16 v2, 0xd

    .line 150
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KnoxCustomManagerService1"

    const/16 v2, 0xe

    .line 151
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KnoxCustomManagerService2"

    const/16 v2, 0xf

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "MiscPolicy"

    const/16 v2, 0x10

    .line 153
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "MultiUserManager"

    const/16 v2, 0x11

    .line 154
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "PhoneRestrictionPolicy"

    const/16 v2, 0x12

    .line 155
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "vpnPolicy"

    const/16 v2, 0x13

    .line 156
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "WifiPolicy"

    const/16 v2, 0x14

    .line 157
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseLicenseService"

    const/16 v2, 0x15

    .line 158
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->DEBUG:Z

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCallerName(I)Ljava/lang/String;
    .locals 0

    .line 3607
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "fail to get caller name"

    :cond_0
    return-object p0
.end method

.method public final getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;
    .locals 1

    .line 3631
    iget-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v0, :cond_0

    const-string v0, "knoxcustom"

    .line 3633
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3632
    invoke-static {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 3636
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 3569
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3575
    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/16 p2, 0x12

    if-eq v1, p2, :cond_2

    const/16 p2, 0xe

    const-string v0, "SecContentProvider2"

    if-eq v1, p2, :cond_1

    const/16 p2, 0xf

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 3597
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "do notifyChange() for knoxCustomManagerService2"

    .line 3598
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3592
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "do notifyChange() for knoxCustomManagerService1"

    .line 3593
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3577
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_3
    const-string p0, "eas_account_policy"

    .line 3581
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz p0, :cond_4

    const-string p1, "API"

    .line 3583
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string/jumbo v1, "setAccountEmailPassword"

    .line 3584
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3586
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "password"

    .line 3587
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3586
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    :cond_4
    :goto_0
    return-object v3
.end method

.method public onCreate()Z
    .locals 1

    .line 164
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public final populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;
    .locals 0

    .line 3561
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3562
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 171
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 172
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query(), uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selection = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SecContentProvider2"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "called from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v6, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/4 v5, 0x7

    const/16 v16, 0x4

    const/4 v6, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x3

    const/16 v17, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eq v0, v11, :cond_d9

    if-eq v0, v9, :cond_d8

    if-eq v0, v6, :cond_c4

    if-eq v0, v5, :cond_c3

    const-string v5, "Failed talking with KnoxCustomManager service"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a7

    .line 1831
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "wifi_policy"

    .line 2495
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 2497
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "isWifiScanningAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v17, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "getAllowUserProfiles"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v17, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "isWifiApSettingUserModificationAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_0

    :cond_2
    move/from16 v17, v14

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "getAutomaticConnectionToWifi"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :cond_3
    move/from16 v17, v15

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "getPromptCredentialsEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x7

    goto :goto_0

    :sswitch_5
    const-string v5, "getAllowUserPolicyChanges"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v17, v6

    goto :goto_0

    :sswitch_6
    const-string v5, "edmAddOrUpdate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    move/from16 v17, v8

    goto :goto_0

    :sswitch_7
    const-string v5, "isOpenWifiApAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    move/from16 v17, v16

    goto :goto_0

    :sswitch_8
    const-string v5, "getPasswordHidden"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_8
    move/from16 v17, v9

    goto :goto_0

    :sswitch_9
    const-string v5, "isEnterpriseNetwork"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_0

    :cond_9
    move/from16 v17, v10

    goto :goto_0

    :sswitch_a
    const-string/jumbo v5, "removeNetworkConfiguration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v17, v11

    goto :goto_0

    :sswitch_b
    const-string v5, "isWifiStateChangeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_0

    :cond_b
    move/from16 v17, v12

    :goto_0
    packed-switch v17, :pswitch_data_1

    return-object v13

    .line 2589
    :pswitch_2
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2592
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_5

    :pswitch_3
    if-eqz v3, :cond_d

    .line 2528
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-ge v5, v10, :cond_c

    goto :goto_1

    .line 2531
    :cond_c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v4, v3, v12

    .line 2532
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aget-object v3, v3, v11

    .line 2533
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2531
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0

    .line 2536
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_5

    :cond_d
    :goto_1
    return-object v13

    .line 2569
    :pswitch_4
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2573
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_5

    .line 2539
    :pswitch_5
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2543
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_5

    .line 2553
    :pswitch_6
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2557
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_5

    .line 2521
    :pswitch_7
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2525
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_5

    :pswitch_8
    if-eqz v3, :cond_f

    .line 2499
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_e

    goto :goto_2

    .line 2502
    :cond_e
    aget-object v0, v3, v12

    if-eqz v0, :cond_14

    .line 2507
    new-instance v13, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    :goto_2
    return-object v13

    .line 2583
    :pswitch_9
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2586
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_5

    .line 2546
    :pswitch_a
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2549
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_5

    :pswitch_b
    if-eqz v3, :cond_11

    .line 2560
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_10

    goto :goto_3

    .line 2563
    :cond_10
    aget-object v3, v3, v12

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 2566
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_5

    :cond_11
    :goto_3
    return-object v13

    :pswitch_c
    if-eqz v3, :cond_13

    .line 2511
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v11, :cond_12

    goto :goto_4

    .line 2518
    :cond_12
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_5

    :cond_13
    :goto_4
    return-object v13

    .line 2576
    :pswitch_d
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2580
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    :cond_14
    :goto_5
    return-object v13

    .line 3006
    :pswitch_e
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryVPN(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 193
    :pswitch_f
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryPhoneRestriction(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 3008
    :pswitch_10
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMultiUser(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 3012
    :pswitch_11
    invoke-virtual {v1, v2, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMisc(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 880
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 888
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_6
    move/from16 v4, v17

    goto/16 :goto_7

    :sswitch_c
    const-string v4, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_6

    :cond_15
    const/16 v4, 0x26

    goto/16 :goto_7

    :sswitch_d
    const-string v4, "getVolumeButtonRotationState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_6

    :cond_16
    const/16 v4, 0x25

    goto/16 :goto_7

    :sswitch_e
    const-string v4, "getSealedHideNotificationMessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_6

    :cond_17
    const/16 v4, 0x24

    goto/16 :goto_7

    :sswitch_f
    const-string v4, "getSealedPowerDialogCustomItemsState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_6

    :cond_18
    const/16 v4, 0x23

    goto/16 :goto_7

    :sswitch_10
    const-string v4, "getSettingsEnabledItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_6

    :cond_19
    const/16 v4, 0x22

    goto/16 :goto_7

    :sswitch_11
    const-string v4, "getLoadingLogoPath"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_6

    :cond_1a
    const/16 v4, 0x21

    goto/16 :goto_7

    :sswitch_12
    const-string v4, "getRecentLongPressMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_6

    :cond_1b
    const/16 v4, 0x20

    goto/16 :goto_7

    :sswitch_13
    const-string v4, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_6

    :cond_1c
    const/16 v4, 0x1f

    goto/16 :goto_7

    :sswitch_14
    const-string v4, "getToastGravityYOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_6

    :cond_1d
    const/16 v4, 0x1e

    goto/16 :goto_7

    :sswitch_15
    const-string v4, "getToastShowPackageNameState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto/16 :goto_6

    :cond_1e
    const/16 v4, 0x1d

    goto/16 :goto_7

    :sswitch_16
    const-string v4, "getToastGravity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto/16 :goto_6

    :cond_1f
    const/16 v4, 0x1c

    goto/16 :goto_7

    :sswitch_17
    const-string v4, "getSealedHardKeyIntentState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto/16 :goto_6

    :cond_20
    const/16 v4, 0x1b

    goto/16 :goto_7

    :sswitch_18
    const-string v4, "getSealedNotificationMessagesState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto/16 :goto_6

    :cond_21
    const/16 v4, 0x1a

    goto/16 :goto_7

    :sswitch_19
    const-string v4, "getUsbConnectionTypeInternal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto/16 :goto_6

    :cond_22
    const/16 v4, 0x19

    goto/16 :goto_7

    :sswitch_1a
    const-string v4, "getUltraPowerSavingPackages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto/16 :goto_6

    :cond_23
    const/16 v4, 0x18

    goto/16 :goto_7

    :sswitch_1b
    const-string v4, "getToastEnabledState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto/16 :goto_6

    :cond_24
    const/16 v4, 0x17

    goto/16 :goto_7

    :sswitch_1c
    const-string v4, "getAppBlockDownloadState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto/16 :goto_6

    :cond_25
    const/16 v4, 0x16

    goto/16 :goto_7

    :sswitch_1d
    const-string v4, "getToastGravityXOffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto/16 :goto_6

    :cond_26
    const/16 v4, 0x15

    goto/16 :goto_7

    :sswitch_1e
    const-string v4, "getAutoCallNumberDelay"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_6

    :cond_27
    const/16 v4, 0x14

    goto/16 :goto_7

    :sswitch_1f
    const-string v4, "getUsbConnectionType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto/16 :goto_6

    :cond_28
    const/16 v4, 0x13

    goto/16 :goto_7

    :sswitch_20
    const-string v4, "getAppBlockDownloadNamespaces"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    goto/16 :goto_6

    :cond_29
    const/16 v4, 0x12

    goto/16 :goto_7

    :sswitch_21
    const-string v4, "isDexAutoOpenLastApp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto/16 :goto_6

    :cond_2a
    const/16 v4, 0x11

    goto/16 :goto_7

    :sswitch_22
    const-string v4, "getToastGravityEnabledState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto/16 :goto_6

    :cond_2b
    const/16 v4, 0x10

    goto/16 :goto_7

    :sswitch_23
    const-string v4, "getAutoCallPickupState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    goto/16 :goto_6

    :cond_2c
    const/16 v4, 0xf

    goto/16 :goto_7

    :sswitch_24
    const-string v4, "getAutoCallNumberAnswerMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto/16 :goto_6

    :cond_2d
    const/16 v4, 0xe

    goto/16 :goto_7

    :sswitch_25
    const-string v4, "getSealedPowerDialogItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_6

    :cond_2e
    const/16 v4, 0xd

    goto/16 :goto_7

    :sswitch_26
    const-string v4, "getExtendedCallInfoState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto/16 :goto_6

    :cond_2f
    const/16 v4, 0xc

    goto/16 :goto_7

    :sswitch_27
    const-string v4, "getEthernetConfigurationType"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto/16 :goto_6

    :cond_30
    const/16 v4, 0xb

    goto/16 :goto_7

    :sswitch_28
    const-string v4, "getSealedVolumeKeyAppsList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto/16 :goto_6

    :cond_31
    const/16 v4, 0xa

    goto/16 :goto_7

    :sswitch_29
    const-string v4, "getSealedVolumeKeyAppState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    goto/16 :goto_6

    :cond_32
    move v4, v14

    goto/16 :goto_7

    :sswitch_2a
    const-string v4, "getLockScreenHiddenItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    goto/16 :goto_6

    :cond_33
    move v4, v15

    goto/16 :goto_7

    :sswitch_2b
    const-string v4, "getAirGestureOptionState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    goto/16 :goto_6

    :cond_34
    const/4 v4, 0x7

    goto :goto_7

    :sswitch_2c
    const-string v4, "getSealedPowerDialogCustomItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto/16 :goto_6

    :cond_35
    move v4, v6

    goto :goto_7

    :sswitch_2d
    const-string v4, "getSettingsHiddenState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto/16 :goto_6

    :cond_36
    move v4, v8

    goto :goto_7

    :sswitch_2e
    const-string v4, "getRecentLongPressActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto/16 :goto_6

    :cond_37
    move/from16 v4, v16

    goto :goto_7

    :sswitch_2f
    const-string v4, "getEthernetState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    goto/16 :goto_6

    :cond_38
    move v4, v9

    goto :goto_7

    :sswitch_30
    const-string v4, "getAutoCallNumberList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto/16 :goto_6

    :cond_39
    move v4, v10

    goto :goto_7

    :sswitch_31
    const-string v4, "getDexHDMIAutoEnter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto/16 :goto_6

    :cond_3a
    move v4, v11

    goto :goto_7

    :sswitch_32
    const-string v4, "getGearNotificationState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    goto/16 :goto_6

    :cond_3b
    move v4, v12

    :goto_7
    packed-switch v4, :pswitch_data_2

    return-object v13

    .line 1168
    :pswitch_13
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v12
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 1170
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1175
    :goto_8
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1105
    :pswitch_14
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v12
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v3, v0

    .line 1107
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    :goto_9
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1038
    :pswitch_15
    :try_start_2
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHideNotificationMessages()I

    move-result v17
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 1040
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1045
    :goto_a
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1047
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1046
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 943
    :pswitch_16
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItemsState()Z

    move-result v12
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v3, v0

    .line 945
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 950
    :goto_b
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1472
    :pswitch_17
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v12
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 1474
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    :goto_c
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1481
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1480
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1729
    :pswitch_18
    :try_start_5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v13
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 1731
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1736
    :goto_d
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1737
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1082
    :pswitch_19
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressMode()I

    move-result v17
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 1084
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1089
    :goto_e
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1091
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1090
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1146
    :pswitch_1a
    :try_start_7
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v12
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_f

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 1148
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1153
    :goto_f
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1316
    :pswitch_1b
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v12
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 1318
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1323
    :goto_10
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1325
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1324
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1231
    :pswitch_1c
    :try_start_9
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v12
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    move-object v3, v0

    .line 1233
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1238
    :goto_11
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1272
    :pswitch_1d
    :try_start_a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v12
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 1274
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1279
    :goto_12
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1281
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1280
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1432
    :pswitch_1e
    :try_start_b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v12
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 1434
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    :goto_13
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 900
    :pswitch_1f
    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskNotificationMessagesState()Z

    move-result v11
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    move-object v3, v0

    .line 902
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    :goto_14
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1527
    :pswitch_20
    :try_start_d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v12
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 1529
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    :goto_15
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1536
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1535
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1697
    :pswitch_21
    :try_start_e
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v13
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    move-object v1, v0

    .line 1699
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1708
    :goto_16
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_40

    .line 1710
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1712
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1713
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_17

    .line 1210
    :pswitch_22
    :try_start_f
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v11
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_18

    :catch_f
    move-exception v0

    move-object v3, v0

    .line 1212
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    :goto_18
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1338
    :pswitch_23
    :try_start_10
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v12
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    move-object v3, v0

    .line 1340
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    :goto_19
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1294
    :pswitch_24
    :try_start_11
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v12
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 1296
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1301
    :goto_1a
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1303
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1302
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    :pswitch_25
    if-eqz v3, :cond_3d

    .line 1621
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_3c

    goto :goto_1c

    .line 1637
    :cond_3c
    :try_start_12
    aget-object v1, v3, v12

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v17
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v0

    .line 1640
    invoke-static {v7, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1645
    :goto_1b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1647
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1646
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    :cond_3d
    :goto_1c
    return-object v13

    .line 1549
    :pswitch_26
    :try_start_13
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v12
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_1d

    :catch_13
    move-exception v0

    move-object v1, v0

    .line 1551
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1556
    :goto_1d
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1558
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1557
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1359
    :pswitch_27
    :try_start_14
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v13
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_1e

    :catch_14
    move-exception v0

    move-object v1, v0

    .line 1361
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1370
    :goto_1e
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_40

    .line 1372
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1374
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1375
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1f

    .line 1774
    :pswitch_28
    :try_start_15
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v17
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_20

    :catch_15
    move-exception v0

    move-object v1, v0

    .line 1776
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1781
    :goto_20
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1783
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1782
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1252
    :pswitch_29
    :try_start_16
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v12
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    move-object v3, v0

    .line 1254
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1259
    :goto_21
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1571
    :pswitch_2a
    :try_start_17
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v17
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_22

    :catch_17
    move-exception v0

    move-object v1, v0

    .line 1573
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1578
    :goto_22
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1580
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1579
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    :pswitch_2b
    if-eqz v3, :cond_3f

    .line 1657
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_3e

    goto :goto_24

    .line 1673
    :cond_3e
    :try_start_18
    aget-object v1, v3, v12

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v17
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    .line 1676
    invoke-static {v7, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1681
    :goto_23
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1683
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1682
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    :cond_3f
    :goto_24
    return-object v13

    .line 920
    :pswitch_2c
    :try_start_19
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogItems()I

    move-result v17
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_25

    :catch_19
    move-exception v0

    move-object v1, v0

    .line 922
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 927
    :goto_25
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 929
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 928
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 995
    :pswitch_2d
    :try_start_1a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExtendedCallInfoState()Z

    move-result v12
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_26

    :catch_1a
    move-exception v0

    move-object v3, v0

    .line 997
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1002
    :goto_26
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1410
    :pswitch_2e
    :try_start_1b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v12
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_27

    :catch_1b
    move-exception v0

    move-object v1, v0

    .line 1412
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1417
    :goto_27
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1419
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1418
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1494
    :pswitch_2f
    :try_start_1c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v13
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception v0

    move-object v1, v0

    .line 1496
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1505
    :goto_28
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_40

    .line 1507
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1509
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1510
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29

    .line 1452
    :pswitch_30
    :try_start_1d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v12
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_2a

    :catch_1d
    move-exception v0

    move-object v3, v0

    .line 1454
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1459
    :goto_2a
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 1188
    :pswitch_31
    :try_start_1e
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v12
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_2b

    :catch_1e
    move-exception v0

    move-object v1, v0

    .line 1190
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1195
    :goto_2b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1197
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1196
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1752
    :pswitch_32
    :try_start_1f
    invoke-interface {v0, v12}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v11
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_2c

    :catch_1f
    move-exception v0

    move-object v3, v0

    .line 1755
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1760
    :goto_2c
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_36

    .line 963
    :pswitch_33
    :try_start_20
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v13
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_2d

    :catch_20
    move-exception v0

    move-object v1, v0

    .line 965
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    :goto_2d
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_40

    .line 976
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 978
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/custom/PowerItem;

    .line 980
    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/PowerItem;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 979
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2e

    .line 1015
    :pswitch_34
    :try_start_21
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsHiddenState()I

    move-result v12
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_2f

    :catch_21
    move-exception v0

    move-object v1, v0

    .line 1017
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1022
    :goto_2f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1024
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1023
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1060
    :pswitch_35
    :try_start_22
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v13
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_30

    :catch_22
    move-exception v0

    move-object v1, v0

    .line 1062
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    :goto_30
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1068
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_36

    .line 1391
    :pswitch_36
    :try_start_23
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v11
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_31

    :catch_23
    move-exception v0

    move-object v3, v0

    .line 1393
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1398
    :goto_31
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_36

    .line 1593
    :pswitch_37
    :try_start_24
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v13
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_32

    :catch_24
    move-exception v0

    move-object v1, v0

    .line 1595
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1604
    :goto_32
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_40

    .line 1606
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_40

    .line 1608
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1609
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_33

    .line 1797
    :pswitch_38
    :try_start_25
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v17
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_34

    :catch_25
    move-exception v0

    move-object v1, v0

    .line 1799
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1804
    :goto_34
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1806
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 1805
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_36

    .line 1125
    :pswitch_39
    :try_start_26
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v11
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_35

    :catch_26
    move-exception v0

    move-object v3, v0

    .line 1127
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    :goto_35
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_40
    :goto_36
    return-object v0

    .line 195
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->getKnoxCustomManagerService()Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v0

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 203
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :goto_37
    move/from16 v4, v17

    goto/16 :goto_38

    :sswitch_33
    const-string v4, "getSealedUsbNetAddress"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_37

    :cond_41
    const/16 v4, 0x1a

    goto/16 :goto_38

    :sswitch_34
    const-string v4, "getSealedStatusBarClockState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_37

    :cond_42
    const/16 v4, 0x19

    goto/16 :goto_38

    :sswitch_35
    const-string v4, "getPowerMenuLockedState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    goto :goto_37

    :cond_43
    const/16 v4, 0x18

    goto/16 :goto_38

    :sswitch_36
    const-string v4, "getVolumePanelEnabledState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_37

    :cond_44
    const/16 v4, 0x17

    goto/16 :goto_38

    :sswitch_37
    const-string v4, "getStatusBarTextSize"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_37

    :cond_45
    const/16 v4, 0x16

    goto/16 :goto_38

    :sswitch_38
    const-string v4, "getSealedStatusBarMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_46

    goto :goto_37

    :cond_46
    const/16 v4, 0x15

    goto/16 :goto_38

    :sswitch_39
    const-string v4, "getLTESettingState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_37

    :cond_47
    const/16 v4, 0x14

    goto/16 :goto_38

    :sswitch_3a
    const-string v4, "getScreenWakeupOnPowerState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_37

    :cond_48
    const/16 v4, 0x13

    goto/16 :goto_38

    :sswitch_3b
    const-string v4, "getSealedStatusBarIconsState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_37

    :cond_49
    const/16 v4, 0x12

    goto/16 :goto_38

    :sswitch_3c
    const-string/jumbo v4, "setSealedState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto/16 :goto_37

    :cond_4a
    const/16 v4, 0x11

    goto/16 :goto_38

    :sswitch_3d
    const-string v4, "getVolumeControlStream"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto/16 :goto_37

    :cond_4b
    const/16 v4, 0x10

    goto/16 :goto_38

    :sswitch_3e
    const-string v4, "getSealedUsbNetState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto/16 :goto_37

    :cond_4c
    const/16 v4, 0xf

    goto/16 :goto_38

    :sswitch_3f
    const-string v4, "getStatusBarText"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto/16 :goto_37

    :cond_4d
    const/16 v4, 0xe

    goto/16 :goto_38

    :sswitch_40
    const-string v4, "getSealedUsbMassStorageState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto/16 :goto_37

    :cond_4e
    const/16 v4, 0xd

    goto/16 :goto_38

    :sswitch_41
    const-string v4, "getPowerSavingMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_37

    :cond_4f
    const/16 v4, 0xc

    goto/16 :goto_38

    :sswitch_42
    const-string v4, "getUltraPowerSavingPackages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto/16 :goto_37

    :cond_50
    const/16 v4, 0xb

    goto/16 :goto_38

    :sswitch_43
    const-string v4, "getTorchOnVolumeButtonsState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto/16 :goto_37

    :cond_51
    const/16 v4, 0xa

    goto/16 :goto_38

    :sswitch_44
    const-string v4, "getInfraredState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto/16 :goto_37

    :cond_52
    move v4, v14

    goto/16 :goto_38

    :sswitch_45
    const-string v4, "getStatusBarTextStyle"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto/16 :goto_37

    :cond_53
    move v4, v15

    goto/16 :goto_38

    :sswitch_46
    const-string v4, "getSealedExitUI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto/16 :goto_37

    :cond_54
    const/4 v4, 0x7

    goto :goto_38

    :sswitch_47
    const-string v4, "getSealedHomeActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto/16 :goto_37

    :cond_55
    move v4, v6

    goto :goto_38

    :sswitch_48
    const-string v4, "getCallScreenDisabledItems"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto/16 :goto_37

    :cond_56
    move v4, v8

    goto :goto_38

    :sswitch_49
    const-string v4, "getSensorDisabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto/16 :goto_37

    :cond_57
    move/from16 v4, v16

    goto :goto_38

    :sswitch_4a
    const-string v4, "getSealedState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto/16 :goto_37

    :cond_58
    move v4, v9

    goto :goto_38

    :sswitch_4b
    const-string v4, "getSealedPowerDialogOptionMode"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto/16 :goto_37

    :cond_59
    move v4, v10

    goto :goto_38

    :sswitch_4c
    const-string v4, "getSealedModeString"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto/16 :goto_37

    :cond_5a
    move v4, v11

    goto :goto_38

    :sswitch_4d
    const-string v4, "getChargingLEDState"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto/16 :goto_37

    :cond_5b
    move v4, v12

    :goto_38
    packed-switch v4, :pswitch_data_3

    return-object v13

    :pswitch_3b
    if-eqz v3, :cond_5d

    .line 495
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_5c

    goto :goto_3a

    .line 508
    :cond_5c
    aget-object v1, v3, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 514
    :try_start_27
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v13
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_39

    :catch_27
    move-exception v0

    move-object v1, v0

    .line 516
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :goto_39
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 522
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    :cond_5d
    :goto_3a
    return-object v13

    .line 421
    :pswitch_3c
    :try_start_28
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarClockState()Z

    move-result v11
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_3b

    :catch_28
    move-exception v0

    move-object v3, v0

    .line 423
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :goto_3b
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 814
    :pswitch_3d
    :try_start_29
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v11
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_3c

    :catch_29
    move-exception v0

    move-object v3, v0

    .line 816
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 821
    :goto_3c
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 690
    :pswitch_3e
    :try_start_2a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v11
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_3d

    :catch_2a
    move-exception v0

    move-object v3, v0

    .line 692
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    :goto_3d
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 776
    :pswitch_3f
    :try_start_2b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v12
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_3e

    :catch_2b
    move-exception v0

    move-object v1, v0

    .line 778
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    :goto_3e
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 785
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 784
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 399
    :pswitch_40
    :try_start_2c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarMode()I

    move-result v10
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_2c

    goto :goto_3f

    :catch_2c
    move-exception v0

    move-object v1, v0

    .line 401
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    :goto_3f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 408
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 407
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 609
    :pswitch_41
    :try_start_2d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v12
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_2d

    goto :goto_40

    :catch_2d
    move-exception v0

    move-object v3, v0

    .line 611
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    :goto_40
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 590
    :pswitch_42
    :try_start_2e
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v11
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_2e

    goto :goto_41

    :catch_2e
    move-exception v0

    move-object v3, v0

    .line 592
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    :goto_41
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 440
    :pswitch_43
    :try_start_2f
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarIconsState()Z

    move-result v11
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_2f

    goto :goto_42

    :catch_2f
    move-exception v0

    move-object v3, v0

    .line 442
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    :goto_42
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    :pswitch_44
    if-eqz v3, :cond_5f

    .line 210
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v11, :cond_5e

    goto :goto_44

    .line 224
    :cond_5e
    aget-object v1, v3, v12

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 226
    aget-object v3, v3, v11

    .line 237
    :try_start_30
    invoke-interface {v0, v1, v3}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->setProKioskState(ZLjava/lang/String;)I

    move-result v17
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_30

    goto :goto_43

    :catch_30
    move-exception v0

    move-object v1, v0

    .line 240
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    :goto_43
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 247
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    :cond_5f
    :goto_44
    return-object v13

    .line 710
    :pswitch_45
    :try_start_31
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v12
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_31} :catch_31

    goto :goto_45

    :catch_31
    move-exception v0

    move-object v1, v0

    .line 712
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 717
    :goto_45
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 719
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 479
    :pswitch_46
    :try_start_32
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbNetStateInternal()Z

    move-result v12
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_32} :catch_32

    goto :goto_46

    :catch_32
    move-exception v0

    move-object v3, v0

    .line 481
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    :goto_46
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 732
    :pswitch_47
    :try_start_33
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v13
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_33} :catch_33

    goto :goto_47

    :catch_33
    move-exception v0

    move-object v1, v0

    .line 734
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 739
    :goto_47
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 740
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 460
    :pswitch_48
    :try_start_34
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v11
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_34} :catch_34

    goto :goto_48

    :catch_34
    move-exception v0

    move-object v3, v0

    .line 462
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :goto_48
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 535
    :pswitch_49
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v0, v3, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_49

    .line 542
    :cond_60
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 543
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "powersaving_switch"

    .line 542
    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_61

    move v10, v12

    goto :goto_49

    :cond_61
    move v10, v11

    .line 555
    :goto_49
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 557
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 556
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 835
    :pswitch_4a
    :try_start_35
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v13
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_35

    goto :goto_4a

    :catch_35
    move-exception v0

    move-object v1, v0

    .line 837
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    :goto_4a
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v13, :cond_68

    .line 848
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 850
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 851
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4b

    .line 796
    :pswitch_4b
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 797
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "torchlight_enable"

    .line 796
    invoke-static {v0, v3, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_4c

    :cond_62
    move v11, v12

    .line 802
    :goto_4c
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 650
    :pswitch_4c
    :try_start_36
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v11
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_36} :catch_36

    goto :goto_4d

    :catch_36
    move-exception v0

    move-object v3, v0

    .line 652
    invoke-static {v7, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    :goto_4d
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_59

    .line 754
    :pswitch_4d
    :try_start_37
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v12
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_37} :catch_37

    goto :goto_4e

    :catch_37
    move-exception v0

    move-object v1, v0

    .line 756
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    :goto_4e
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 763
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 762
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    :pswitch_4e
    if-eqz v3, :cond_64

    .line 335
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_63

    goto :goto_50

    .line 349
    :cond_63
    aget-object v1, v3, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 355
    :try_start_38
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getExitUI(I)Ljava/lang/String;

    move-result-object v13
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_38

    goto :goto_4f

    :catch_38
    move-exception v0

    move-object v1, v0

    .line 357
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    :goto_4f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 363
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    :cond_64
    :goto_50
    return-object v13

    .line 377
    :pswitch_4f
    :try_start_39
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHomeActivity()Ljava/lang/String;

    move-result-object v13
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_39} :catch_39

    goto :goto_51

    :catch_39
    move-exception v0

    move-object v1, v0

    .line 379
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    :goto_51
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 385
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 628
    :pswitch_50
    :try_start_3a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v12
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3a} :catch_3a

    goto :goto_52

    :catch_3a
    move-exception v0

    move-object v1, v0

    .line 630
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    :goto_52
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 637
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 636
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 669
    :pswitch_51
    :try_start_3b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v12
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_3b} :catch_3b

    goto :goto_53

    :catch_3b
    move-exception v0

    move-object v1, v0

    .line 671
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    :goto_53
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 678
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 677
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_59

    .line 260
    :pswitch_52
    :try_start_3c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v12
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3c} :catch_3c

    goto :goto_54

    :catch_3c
    move-exception v0

    move-object v3, v0

    const-string v0, "Failed talking with knoxCustomManager service"

    .line 262
    invoke-static {v7, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    :goto_54
    invoke-virtual {v1, v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_59

    .line 281
    :pswitch_53
    :try_start_3d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerDialogOptionMode()I

    move-result v10
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3d} :catch_3d

    goto :goto_55

    :catch_3d
    move-exception v0

    move-object v1, v0

    .line 283
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    :goto_55
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 290
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_59

    :pswitch_54
    if-eqz v3, :cond_66

    .line 300
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_65

    goto :goto_57

    .line 313
    :cond_65
    aget-object v1, v3, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    :try_start_3e
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3e} :catch_3e

    goto :goto_56

    :catch_3e
    move-exception v0

    move-object v1, v0

    .line 321
    invoke-static {v7, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    :goto_56
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 327
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_59

    :cond_66
    :goto_57
    return-object v13

    .line 570
    :pswitch_55
    iget-object v0, v1, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 571
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "led_indicator_charing"

    .line 570
    invoke-static {v0, v3, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_67

    goto :goto_58

    :cond_67
    move v11, v12

    .line 576
    :goto_58
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_68
    :goto_59
    return-object v0

    :pswitch_56
    const-string v0, "kioskmode"

    .line 2603
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v0, :cond_126

    .line 2605
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    :goto_5a
    move/from16 v9, v17

    goto/16 :goto_5b

    :sswitch_4e
    const-string v5, "isNightClockAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    goto :goto_5a

    :cond_69
    const/16 v9, 0xe

    goto/16 :goto_5b

    :sswitch_4f
    const-string v5, "isInformationStreamAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto :goto_5a

    :cond_6a
    const/16 v9, 0xd

    goto/16 :goto_5b

    :sswitch_50
    const-string v5, "isAirCommandModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    goto :goto_5a

    :cond_6b
    const/16 v9, 0xc

    goto/16 :goto_5b

    :sswitch_51
    const-string v5, "isAppsEdgeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto :goto_5a

    :cond_6c
    const/16 v9, 0xb

    goto/16 :goto_5b

    :sswitch_52
    const-string v5, "isNavigationBarHidden"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto :goto_5a

    :cond_6d
    const/16 v9, 0xa

    goto/16 :goto_5b

    :sswitch_53
    const-string v5, "getKioskHomePackage"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6e

    goto :goto_5a

    :cond_6e
    move v9, v14

    goto/16 :goto_5b

    :sswitch_54
    const-string v5, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    goto :goto_5a

    :cond_6f
    move v9, v15

    goto/16 :goto_5b

    :sswitch_55
    const-string v5, "isAirViewModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_70

    goto :goto_5a

    :cond_70
    const/4 v9, 0x7

    goto :goto_5b

    :sswitch_56
    const-string v5, "getBlockedHwKeysCache"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_71

    goto :goto_5a

    :cond_71
    move v9, v6

    goto :goto_5b

    :sswitch_57
    const-string v5, "isMultiWindowModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    goto :goto_5a

    :cond_72
    move v9, v8

    goto :goto_5b

    :sswitch_58
    const-string v5, "isKioskModeEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    goto/16 :goto_5a

    :cond_73
    move/from16 v9, v16

    goto :goto_5b

    :sswitch_59
    const-string v5, "isPeopleEdgeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_77

    goto/16 :goto_5a

    :sswitch_5a
    const-string v5, "isEdgeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto/16 :goto_5a

    :cond_74
    move v9, v10

    goto :goto_5b

    :sswitch_5b
    const-string v5, "isEdgeLightingAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_75

    goto/16 :goto_5a

    :cond_75
    move v9, v11

    goto :goto_5b

    :sswitch_5c
    const-string v5, "isTaskManagerAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    goto/16 :goto_5a

    :cond_76
    move v9, v12

    :cond_77
    :goto_5b
    packed-switch v9, :pswitch_data_4

    goto/16 :goto_61

    .line 2732
    :pswitch_57
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNightClockAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2735
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    .line 2759
    :pswitch_58
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isInformationStreamAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2762
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    :pswitch_59
    if-nez v3, :cond_78

    .line 2642
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_5c

    .line 2645
    :cond_78
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    aget-object v5, v3, v12

    .line 2646
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2645
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirCommandModeAllowed uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :goto_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAirCommandModeAllowed return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    .line 2767
    :pswitch_5a
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAppsEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2770
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    .line 2607
    :pswitch_5b
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2611
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    .line 2721
    :pswitch_5c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2725
    new-instance v13, Landroid/database/MatrixCursor;

    const-string v1, "getKioskHomePackage"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2727
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :pswitch_5d
    if-eqz v3, :cond_7a

    .line 2629
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, v11, :cond_79

    goto :goto_5d

    .line 2633
    :cond_79
    aget-object v3, v3, v12

    .line 2634
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2633
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 2635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMultiWindowModeAllowedAsUser return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    :cond_7a
    :goto_5d
    return-object v13

    :pswitch_5e
    if-nez v3, :cond_7b

    .line 2658
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_5e

    .line 2661
    :cond_7b
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    aget-object v5, v3, v12

    .line 2662
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2661
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAirViewModeAllowed uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :goto_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAirViewModeAllowed return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    .line 2672
    :pswitch_5f
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v0

    .line 2675
    new-instance v13, Landroid/database/MatrixCursor;

    const-string v1, "getBlockedHwKeysCache"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2677
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :pswitch_60
    if-eqz v3, :cond_7d

    .line 2616
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_7c

    goto :goto_5f

    .line 2620
    :cond_7c
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2621
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2620
    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 2624
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_61

    :cond_7d
    :goto_5f
    return-object v13

    :pswitch_61
    if-nez v3, :cond_7e

    .line 2695
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_60

    .line 2698
    :cond_7e
    aget-object v5, v3, v12

    .line 2703
    array-length v6, v3

    if-lt v6, v10, :cond_7f

    aget-object v3, v3, v11

    const-string v6, "emergency"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 2705
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeProcessingOrEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    const-string v3, "isKioskModeEnabled param EMERGENCY"

    .line 2707
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 2709
    :cond_7f
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 2710
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2709
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKioskModeEnabled param UID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKioskModeEnabled return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2716
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_61

    .line 2741
    :pswitch_62
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isPeopleEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2744
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_61

    .line 2776
    :pswitch_63
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2779
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_61

    .line 2750
    :pswitch_64
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeLightingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2753
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_61

    :pswitch_65
    if-eqz v3, :cond_81

    .line 2681
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_80

    goto :goto_61

    .line 2685
    :cond_80
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2686
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 2685
    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 2689
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    :cond_81
    :goto_61
    return-object v13

    :pswitch_66
    const-string v0, "eas_account_policy"

    .line 2302
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 2304
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_4

    :goto_62
    move/from16 v10, v17

    goto/16 :goto_63

    :sswitch_5d
    const-string v5, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    goto :goto_62

    :cond_82
    const/16 v10, 0xd

    goto/16 :goto_63

    :sswitch_5e
    const-string v5, "getMaxCalendarAgeFilter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    goto :goto_62

    :cond_83
    const/16 v10, 0xc

    goto/16 :goto_63

    :sswitch_5f
    const-string v5, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    goto :goto_62

    :cond_84
    const/16 v10, 0xb

    goto/16 :goto_63

    :sswitch_60
    const-string v5, "getForceSMIMECertificateForSigning"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_85

    goto :goto_62

    :cond_85
    const/16 v10, 0xa

    goto/16 :goto_63

    :sswitch_61
    const-string v5, "isIncomingAttachmentsAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    goto :goto_62

    :cond_86
    move v10, v14

    goto/16 :goto_63

    :sswitch_62
    const-string v5, "getForceSMIMECertificate"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_87

    goto :goto_62

    :cond_87
    move v10, v15

    goto/16 :goto_63

    :sswitch_63
    const-string v5, "getAccountEmailPassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_88

    goto :goto_62

    :cond_88
    const/4 v10, 0x7

    goto :goto_63

    :sswitch_64
    const-string v5, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    goto :goto_62

    :cond_89
    move v10, v6

    goto :goto_63

    :sswitch_65
    const-string v5, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8a

    goto :goto_62

    :cond_8a
    move v10, v8

    goto :goto_63

    :sswitch_66
    const-string v5, "getAccountCertificatePassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8b

    goto :goto_62

    :cond_8b
    move/from16 v10, v16

    goto :goto_63

    :sswitch_67
    const-string v5, "getRequiredSignedMIMEMessages"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8c

    goto/16 :goto_62

    :cond_8c
    move v10, v9

    goto :goto_63

    :sswitch_68
    const-string v5, "getMaxEmailAgeFilter"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8f

    goto/16 :goto_62

    :sswitch_69
    const-string/jumbo v5, "setAccountEmailPassword"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8d

    goto/16 :goto_62

    :cond_8d
    move v10, v11

    goto :goto_63

    :sswitch_6a
    const-string v5, "getIncomingAttachmentSize"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    goto/16 :goto_62

    :cond_8e
    move v10, v12

    :cond_8f
    :goto_63
    packed-switch v10, :pswitch_data_5

    const-string/jumbo v0, "return null"

    .line 2486
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_67
    if-eqz v3, :cond_91

    .line 2393
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_90

    goto :goto_64

    .line 2396
    :cond_90
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2398
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2396
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2401
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2402
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_91
    :goto_64
    return-object v13

    :pswitch_68
    if-eqz v3, :cond_93

    .line 2365
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_92

    goto :goto_65

    .line 2368
    :cond_92
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2370
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2368
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2373
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2374
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_93
    :goto_65
    return-object v13

    :pswitch_69
    if-eqz v3, :cond_95

    .line 2379
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_94

    goto :goto_66

    .line 2382
    :cond_94
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2384
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2382
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2387
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2388
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_95
    :goto_66
    return-object v13

    :pswitch_6a
    if-eqz v3, :cond_97

    .line 2407
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_96

    goto :goto_67

    .line 2410
    :cond_96
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2412
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2410
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2415
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_71

    :cond_97
    :goto_67
    return-object v13

    :pswitch_6b
    if-eqz v3, :cond_99

    .line 2339
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_98

    goto :goto_68

    .line 2342
    :cond_98
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2344
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2342
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2347
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_71

    :cond_99
    :goto_68
    return-object v13

    :pswitch_6c
    if-eqz v3, :cond_9b

    .line 2328
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9a

    goto :goto_69

    .line 2331
    :cond_9a
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2333
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2331
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2336
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_71

    :cond_9b
    :goto_69
    return-object v13

    :pswitch_6d
    if-eqz v3, :cond_9d

    .line 2431
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_9c

    goto :goto_6a

    .line 2434
    :cond_9c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2436
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2434
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    .line 2439
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2440
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_9d
    :goto_6a
    return-object v13

    :pswitch_6e
    if-eqz v3, :cond_9f

    .line 2317
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_9e

    goto :goto_6b

    .line 2320
    :cond_9e
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2322
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2320
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2325
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_71

    :cond_9f
    :goto_6b
    return-object v13

    :pswitch_6f
    if-eqz v3, :cond_a1

    .line 2419
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a0

    goto :goto_6c

    .line 2422
    :cond_a0
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2424
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2422
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2427
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_71

    :cond_a1
    :goto_6c
    return-object v13

    :pswitch_70
    if-eqz v3, :cond_a3

    .line 2445
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_a2

    goto :goto_6d

    .line 2448
    :cond_a2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2450
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2448
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    .line 2453
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2454
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_71

    :cond_a3
    :goto_6d
    return-object v13

    :pswitch_71
    if-eqz v3, :cond_a5

    .line 2306
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a4

    goto :goto_6e

    .line 2309
    :cond_a4
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2311
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2309
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2314
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_71

    :cond_a5
    :goto_6e
    return-object v13

    :pswitch_72
    if-eqz v3, :cond_a7

    .line 2459
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_a6

    goto :goto_6f

    .line 2462
    :cond_a6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2463
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2462
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2466
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2468
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2467
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_71

    :cond_a7
    :goto_6f
    return-object v13

    :pswitch_73
    if-eqz v3, :cond_a9

    .line 2472
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v11, :cond_a8

    goto :goto_70

    .line 2475
    :cond_a8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 2480
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2482
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2481
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_71

    :cond_a9
    :goto_70
    return-object v13

    :pswitch_74
    if-eqz v3, :cond_ab

    .line 2351
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_aa

    goto :goto_72

    .line 2354
    :cond_aa
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2356
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2354
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 2359
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2361
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2360
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_71
    return-object v1

    :cond_ab
    :goto_72
    return-object v13

    .line 2788
    :pswitch_75
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object v0

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 2790
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5

    :goto_73
    move/from16 v15, v17

    goto/16 :goto_74

    :sswitch_6b
    const-string v5, "isAdminRemovable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    goto :goto_73

    :sswitch_6c
    const-string v5, "getRemoveWarning"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ac

    goto :goto_73

    :cond_ac
    const/4 v15, 0x7

    goto :goto_74

    :sswitch_6d
    const-string/jumbo v5, "removeActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ad

    goto :goto_73

    :cond_ad
    move v15, v6

    goto :goto_74

    :sswitch_6e
    const-string/jumbo v5, "setActiveAdmin"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ae

    goto :goto_73

    :cond_ae
    move v15, v8

    goto :goto_74

    :sswitch_6f
    const-string v5, "isMdmAdminPresent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_af

    goto :goto_73

    :cond_af
    move/from16 v15, v16

    goto :goto_74

    :sswitch_70
    const-string v5, "getEnterpriseSdkVer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0

    goto :goto_73

    :cond_b0
    move v15, v9

    goto :goto_74

    :sswitch_71
    const-string v5, "getAdminRemovable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b1

    goto :goto_73

    :cond_b1
    move v15, v10

    goto :goto_74

    :sswitch_72
    const-string v5, "getActiveAdmins"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b2

    goto :goto_73

    :cond_b2
    move v15, v11

    goto :goto_74

    :sswitch_73
    const-string/jumbo v5, "setAdminRemovable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b3

    goto :goto_73

    :cond_b3
    move v15, v12

    :cond_b4
    :goto_74
    packed-switch v15, :pswitch_data_6

    goto/16 :goto_7c

    :pswitch_76
    if-eqz v3, :cond_b6

    .line 2835
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, v11, :cond_b5

    goto :goto_75

    .line 2838
    :cond_b5
    aget-object v3, v3, v12

    .line 2839
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 2838
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isAdminRemovable(Landroid/content/ComponentName;)Z

    move-result v0

    .line 2841
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto/16 :goto_7c

    :cond_b6
    :goto_75
    return-object v13

    :pswitch_77
    if-eqz v3, :cond_b8

    .line 2821
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gt v1, v11, :cond_b7

    goto :goto_76

    .line 2825
    :cond_b7
    :try_start_3f
    aget-object v1, v3, v12

    .line 2826
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v2, v3, v11

    .line 2827
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 2825
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_3f} :catch_3f

    goto/16 :goto_7c

    :catch_3f
    move-exception v0

    .line 2831
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7c

    :cond_b8
    :goto_76
    return-object v13

    :pswitch_78
    if-eqz v3, :cond_ba

    .line 2858
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v11, :cond_b9

    goto :goto_77

    .line 2862
    :cond_b9
    :try_start_40
    aget-object v1, v3, v12

    .line 2863
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 2862
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_40} :catch_40

    goto/16 :goto_7c

    :catch_40
    move-exception v0

    .line 2866
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7c

    :cond_ba
    :goto_77
    return-object v13

    :pswitch_79
    if-eqz v3, :cond_bc

    .line 2845
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v10, :cond_bb

    goto :goto_78

    .line 2849
    :cond_bb
    :try_start_41
    aget-object v1, v3, v12

    .line 2850
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    aget-object v2, v3, v11

    .line 2851
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2849
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_41} :catch_41

    goto/16 :goto_7c

    :catch_41
    move-exception v0

    .line 2854
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_7c

    :cond_bc
    :goto_78
    return-object v13

    .line 2885
    :pswitch_7a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2887
    :try_start_42
    invoke-virtual {v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isMdmAdminPresent()Z

    move-result v0

    .line 2888
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_0

    .line 2890
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7c

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2891
    throw v0

    .line 2894
    :pswitch_7b
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 2895
    new-instance v13, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2897
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2896
    invoke-virtual {v13, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7c

    :pswitch_7c
    if-eqz v3, :cond_be

    .line 2792
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_bd

    goto :goto_79

    .line 2795
    :cond_bd
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getAdminRemovable(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2799
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    goto :goto_7c

    :cond_be
    :goto_79
    return-object v13

    :pswitch_7d
    if-eqz v3, :cond_c0

    .line 2802
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_bf

    goto :goto_7b

    .line 2805
    :cond_bf
    aget-object v1, v3, v12

    .line 2806
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    .line 2809
    new-instance v13, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_c2

    .line 2811
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 2813
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2815
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 2814
    invoke-virtual {v13, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7a

    :cond_c0
    :goto_7b
    return-object v13

    :pswitch_7e
    if-eqz v3, :cond_c2

    .line 2870
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gt v5, v11, :cond_c1

    goto :goto_7c

    .line 2873
    :cond_c1
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v4, v3, v12

    .line 2875
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    aget-object v3, v3, v11

    .line 2873
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    move-result v0

    .line 2877
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v13

    :cond_c2
    :goto_7c
    return-object v13

    .line 3014
    :cond_c3
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEmailAccount(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_c4
    const-string v0, "email_policy"

    .line 2906
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v0, :cond_126

    if-eqz v2, :cond_126

    .line 2908
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_6

    :goto_7d
    move/from16 v16, v17

    goto :goto_7e

    :sswitch_74
    const-string v5, "isAccountAdditionAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    goto :goto_7d

    :cond_c5
    move/from16 v16, v6

    goto :goto_7e

    :sswitch_75
    const-string v5, "getAllowEmailForwarding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c6

    goto :goto_7d

    :cond_c6
    move/from16 v16, v8

    goto :goto_7e

    :sswitch_76
    const-string v5, "isEmailNotificationsEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_cb

    goto :goto_7d

    :sswitch_77
    const-string v5, "isEmailSettingsChangesAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c7

    goto :goto_7d

    :cond_c7
    move/from16 v16, v9

    goto :goto_7e

    :sswitch_78
    const-string v5, "getEnterpriseEmailAccountObject"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c8

    goto :goto_7d

    :cond_c8
    move/from16 v16, v10

    goto :goto_7e

    :sswitch_79
    const-string v5, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c9

    goto :goto_7d

    :cond_c9
    move/from16 v16, v11

    goto :goto_7e

    :sswitch_7a
    const-string v5, "getAllowHtmlEmail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ca

    goto :goto_7d

    :cond_ca
    move/from16 v16, v12

    :cond_cb
    :goto_7e
    packed-switch v16, :pswitch_data_7

    return-object v13

    .line 2910
    :pswitch_7f
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2914
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_85

    :pswitch_80
    if-eqz v3, :cond_cd

    .line 2917
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_cc

    goto :goto_7f

    .line 2920
    :cond_cc
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2925
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_85

    :cond_cd
    :goto_7f
    return-object v13

    :pswitch_81
    if-eqz v3, :cond_cf

    .line 2939
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ce

    goto :goto_80

    .line 2942
    :cond_ce
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2944
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2942
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2947
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_85

    :cond_cf
    :goto_80
    return-object v13

    :pswitch_82
    if-eqz v3, :cond_d1

    .line 2928
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_d0

    goto :goto_81

    .line 2931
    :cond_d0
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 2933
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2931
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 2936
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_85

    :cond_d1
    :goto_81
    return-object v13

    :pswitch_83
    if-eqz v3, :cond_d3

    .line 2978
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d2

    goto :goto_82

    .line 2981
    :cond_d2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v12

    .line 2984
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2982
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 2986
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2988
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "email.account"

    .line 2990
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2993
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_83

    :cond_d3
    :goto_82
    return-object v13

    :pswitch_84
    if-eqz v3, :cond_d5

    .line 2961
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_d4

    goto :goto_84

    .line 2964
    :cond_d4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v12

    .line 2967
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2965
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(Lcom/samsung/android/knox/ContextInfo;J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 2969
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2971
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "eas.account"

    .line 2973
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2975
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    :goto_83
    move-object v0, v1

    goto :goto_85

    :cond_d5
    :goto_84
    return-object v13

    :pswitch_85
    if-eqz v3, :cond_d7

    .line 2950
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_d6

    goto :goto_86

    .line 2953
    :cond_d6
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v5, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v0, v5, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2957
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :goto_85
    return-object v0

    :cond_d7
    :goto_86
    return-object v13

    .line 3010
    :cond_d8
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_d9
    const-string v0, "application_policy"

    .line 1834
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v5, :cond_126

    .line 1836
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_7

    goto/16 :goto_88

    :sswitch_7b
    const-string v0, "getAppInstallToSdCard"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto/16 :goto_88

    :cond_da
    const/16 v0, 0x1b

    goto/16 :goto_87

    :sswitch_7c
    const-string v0, "getApplicationUninstallationEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_db

    goto/16 :goto_88

    :cond_db
    const/16 v0, 0x1a

    goto/16 :goto_87

    :sswitch_7d
    const-string v0, "getApplicationStateDisabledList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    goto/16 :goto_88

    :cond_dc
    const/16 v0, 0x19

    goto :goto_87

    :sswitch_7e
    const-string v0, "isPackageUpdateAllowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    goto/16 :goto_88

    :cond_dd
    const/16 v0, 0x18

    goto :goto_87

    :sswitch_7f
    const-string v0, "isIntentDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_de

    goto/16 :goto_88

    :cond_de
    const/16 v0, 0x17

    goto :goto_87

    :sswitch_80
    const-string v0, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    goto/16 :goto_88

    :cond_df
    const/16 v0, 0x16

    goto :goto_87

    :sswitch_81
    const-string v0, "isUsbDevicePermittedForPackage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e0

    goto/16 :goto_88

    :cond_e0
    const/16 v0, 0x15

    goto :goto_87

    :sswitch_82
    const-string v0, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e1

    goto/16 :goto_88

    :cond_e1
    const/16 v0, 0x14

    goto :goto_87

    :sswitch_83
    const-string v0, "getApplicationIconFromDb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    goto/16 :goto_88

    :cond_e2
    const/16 v0, 0x13

    goto :goto_87

    :sswitch_84
    const-string v0, "isApplicationForceStopDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e3

    goto/16 :goto_88

    :cond_e3
    const/16 v0, 0x12

    :goto_87
    move/from16 v17, v0

    goto/16 :goto_88

    :sswitch_85
    const-string v0, "isApplicationSetToDefault"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e4

    goto/16 :goto_88

    :cond_e4
    const/16 v17, 0x11

    goto/16 :goto_88

    :sswitch_86
    const-string v0, "getApplicationStateEnabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto/16 :goto_88

    :cond_e5
    const/16 v17, 0x10

    goto/16 :goto_88

    :sswitch_87
    const-string v0, "isApplicationClearCacheDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    goto/16 :goto_88

    :cond_e6
    const/16 v17, 0xf

    goto/16 :goto_88

    :sswitch_88
    const-string v0, "getApplicationNameFromDb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    goto/16 :goto_88

    :cond_e7
    const/16 v17, 0xe

    goto/16 :goto_88

    :sswitch_89
    const-string v0, "getDefaultApplicationInternal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    goto/16 :goto_88

    :cond_e8
    const/16 v17, 0xd

    goto/16 :goto_88

    :sswitch_8a
    const-string v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e9

    goto/16 :goto_88

    :cond_e9
    const/16 v17, 0xc

    goto/16 :goto_88

    :sswitch_8b
    const-string v0, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ea

    goto/16 :goto_88

    :cond_ea
    const/16 v17, 0xb

    goto/16 :goto_88

    :sswitch_8c
    const-string v0, "getApplicationInstallUninstallListAsUser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_eb

    goto/16 :goto_88

    :cond_eb
    const/16 v17, 0xa

    goto/16 :goto_88

    :sswitch_8d
    const-string v0, "isApplicationClearDataDisabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    goto/16 :goto_88

    :cond_ec
    move/from16 v17, v14

    goto/16 :goto_88

    :sswitch_8e
    const-string v0, "getApplicationUninstallationMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    goto/16 :goto_88

    :cond_ed
    move/from16 v17, v15

    goto/16 :goto_88

    :sswitch_8f
    const-string v0, "getApplicationInstallUninstallList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ee

    goto/16 :goto_88

    :cond_ee
    const/16 v17, 0x7

    goto :goto_88

    :sswitch_90
    const-string v0, "getApplicationNotificationMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    goto :goto_88

    :cond_ef
    move/from16 v17, v6

    goto :goto_88

    :sswitch_91
    const-string v0, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f0

    goto :goto_88

    :cond_f0
    move/from16 v17, v8

    goto :goto_88

    :sswitch_92
    const-string v0, "isApplicationInstalled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    goto :goto_88

    :cond_f1
    move/from16 v17, v16

    goto :goto_88

    :sswitch_93
    const-string v0, "getApplicationComponentState"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    goto :goto_88

    :cond_f2
    move/from16 v17, v9

    goto :goto_88

    :sswitch_94
    const-string v0, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f3

    goto :goto_88

    :cond_f3
    move/from16 v17, v10

    goto :goto_88

    :sswitch_95
    const-string v0, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f4

    goto :goto_88

    :cond_f4
    move/from16 v17, v11

    goto :goto_88

    :sswitch_96
    const-string v0, "getAppInstallationMode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    goto :goto_88

    :cond_f5
    move/from16 v17, v12

    :goto_88
    packed-switch v17, :pswitch_data_8

    const-string/jumbo v0, "return null"

    .line 2292
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 1896
    :pswitch_86
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :pswitch_87
    if-eqz v3, :cond_f7

    .line 1838
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_f6

    goto :goto_89

    .line 1842
    :cond_f6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1846
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_f7
    :goto_89
    return-object v13

    .line 2076
    :pswitch_88
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f8

    .line 2078
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f8

    .line 2080
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2081
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2082
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationStateDisabledList value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8a

    :cond_f8
    const-string v0, "getApplicationStateDisabledList null"

    .line 2088
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_89
    if-eqz v3, :cond_fa

    .line 1956
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v11, :cond_f9

    goto :goto_8b

    .line 1959
    :cond_f9
    aget-object v0, v3, v12

    aget-object v3, v3, v11

    .line 1960
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1959
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    .line 1963
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_fa
    :goto_8b
    return-object v13

    :pswitch_8a
    if-eqz v3, :cond_fc

    .line 1862
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_fb

    goto :goto_8c

    .line 1865
    :cond_fb
    aget-object v0, v3, v12

    .line 1866
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1865
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0

    .line 1869
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_fc
    :goto_8c
    return-object v13

    :pswitch_8b
    if-eqz v3, :cond_fd

    .line 2191
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_fd

    .line 2192
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2193
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2194
    invoke-virtual {v5, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto :goto_8d

    .line 2197
    :cond_fd
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2198
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 2202
    :goto_8d
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_fe

    .line 2205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_fe

    .line 2206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2207
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8e

    :cond_fe
    return-object v13

    :pswitch_8c
    if-eqz v3, :cond_100

    .line 1994
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_ff

    goto :goto_8f

    .line 1997
    :cond_ff
    aget-object v0, v3, v12

    .line 1998
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v4, v3, v11

    .line 1999
    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    aget-object v3, v3, v10

    .line 1997
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isUsbDevicePermittedForPackage(ILandroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0

    .line 2003
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_100
    :goto_8f
    return-object v13

    :pswitch_8d
    if-eqz v3, :cond_102

    .line 2020
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_101

    goto :goto_90

    .line 2023
    :cond_101
    aget-object v0, v3, v12

    aget-object v3, v3, v11

    .line 2025
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2023
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(Ljava/lang/String;I)Z

    move-result v0

    .line 2028
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_102
    :goto_90
    return-object v13

    :pswitch_8e
    if-eqz v3, :cond_104

    .line 2007
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v11, :cond_103

    goto :goto_91

    .line 2010
    :cond_103
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v12

    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v0

    .line 2014
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2015
    filled-new-array {v0}, [[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a5

    :cond_104
    :goto_91
    return-object v13

    :pswitch_8f
    if-eqz v3, :cond_106

    .line 1901
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v8, :cond_105

    goto :goto_92

    .line 1904
    :cond_105
    aget-object v19, v3, v12

    aget-object v0, v3, v11

    .line 1905
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aget-object v21, v3, v10

    aget-object v22, v3, v9

    aget-object v23, v3, v16

    aget-object v0, v3, v8

    .line 1907
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v18, v5

    .line 1904
    invoke-virtual/range {v18 .. v24}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1910
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_106
    :goto_92
    return-object v13

    :pswitch_90
    if-eqz v3, :cond_108

    .line 2041
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_107

    goto :goto_93

    .line 2044
    :cond_107
    aget-object v0, v3, v12

    aget-object v3, v3, v11

    .line 2045
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2044
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    .line 2048
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_108
    :goto_93
    return-object v13

    :pswitch_91
    if-eqz v3, :cond_10a

    .line 1982
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_109

    goto :goto_94

    .line 1985
    :cond_109
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1989
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_10a
    :goto_94
    return-object v13

    :pswitch_92
    if-eqz v3, :cond_10c

    .line 1928
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_10b

    goto :goto_95

    .line 1931
    :cond_10b
    aget-object v0, v3, v12

    aget-object v4, v3, v11

    .line 1932
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v10

    .line 1933
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1931
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1936
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_10c
    :goto_95
    return-object v13

    :pswitch_93
    if-eqz v3, :cond_10e

    .line 1941
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v11, :cond_10d

    goto :goto_96

    .line 1944
    :cond_10d
    aget-object v0, v3, v12

    aget-object v1, v3, v11

    .line 1945
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1944
    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1948
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1949
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a5

    :cond_10e
    :goto_96
    return-object v13

    :pswitch_94
    if-eqz v3, :cond_110

    .line 2051
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_10f

    goto :goto_98

    .line 2057
    :cond_10f
    :try_start_43
    aget-object v0, v3, v12

    invoke-static {v0, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13
    :try_end_43
    .catch Ljava/net/URISyntaxException; {:try_start_43 .. :try_end_43} :catch_42

    goto :goto_97

    :catch_42
    move-exception v0

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URISyntaxException "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :goto_97
    aget-object v0, v3, v11

    .line 2064
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2063
    invoke-virtual {v5, v13, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 2067
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_125

    .line 2070
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2069
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a5

    :cond_110
    :goto_98
    return-object v13

    .line 2177
    :pswitch_95
    invoke-virtual {v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    .line 2179
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_125

    .line 2180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_125

    .line 2181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_99
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2182
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_99

    :pswitch_96
    if-eqz v3, :cond_112

    .line 2031
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v11, :cond_111

    goto :goto_9a

    .line 2034
    :cond_111
    aget-object v0, v3, v12

    .line 2035
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2034
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    .line 2038
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_112
    :goto_9a
    return-object v13

    :pswitch_97
    if-eqz v3, :cond_115

    .line 2123
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v10, :cond_113

    goto :goto_9c

    :cond_113
    const-string v0, "getApplicationInstallUninstallListAsUser"

    .line 2130
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    aget-object v0, v3, v12

    .line 2134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v3, v11

    .line 2133
    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2137
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_114

    .line 2140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_114

    .line 2141
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationInstallUninstallListAsUser value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9b

    :cond_114
    const-string v0, "getApplicationInstallUninstallList null"

    .line 2149
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_115
    :goto_9c
    const-string v0, "getApplicationInstallUninstallListAsUser selectionArgs is null"

    .line 2124
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_98
    if-eqz v3, :cond_117

    .line 1915
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v10, :cond_116

    goto :goto_9d

    .line 1918
    :cond_116
    aget-object v0, v3, v12

    aget-object v4, v3, v11

    .line 1919
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v10

    .line 1920
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1918
    invoke-virtual {v5, v0, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 1923
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_117
    :goto_9d
    return-object v13

    .line 2164
    :pswitch_99
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2165
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2169
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2170
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a5

    :pswitch_9a
    if-eqz v3, :cond_11a

    .line 2093
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v11, :cond_118

    goto :goto_9f

    :cond_118
    const-string v0, "getApplicationInstallUninstallList"

    .line 2099
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    aget-object v0, v3, v12

    .line 2102
    invoke-virtual {v5, v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2106
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_119

    .line 2109
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_119

    .line 2110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationInstallUninstallList value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9e

    :cond_119
    const-string v0, "getApplicationInstallUninstallList null"

    .line 2118
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_11a
    :goto_9f
    const-string v0, "getApplicationInstallUninstallList selectionArgs is null"

    .line 2094
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :pswitch_9b
    if-eqz v3, :cond_11c

    .line 1874
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_11b

    goto :goto_a0

    .line 1878
    :cond_11b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v12

    .line 1880
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1878
    invoke-virtual {v5, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0

    .line 1883
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1885
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1884
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_a5

    :cond_11c
    :goto_a0
    return-object v13

    :pswitch_9c
    if-eqz v3, :cond_11d

    .line 2246
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_11d

    .line 2247
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2248
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2249
    invoke-virtual {v5, v1, v0, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2256
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2259
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clipboard_blacklist_perUid"

    .line 2262
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2265
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_a5

    :cond_11d
    return-object v13

    :pswitch_9d
    if-eqz v3, :cond_11f

    .line 1850
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_11e

    goto :goto_a1

    .line 1854
    :cond_11e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1858
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_11f
    :goto_a1
    return-object v13

    :pswitch_9e
    if-eqz v3, :cond_121

    .line 1968
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_120

    goto :goto_a2

    .line 1971
    :cond_120
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v12

    .line 1973
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 1971
    invoke-virtual {v5, v0, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0

    .line 1977
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_a6

    :cond_121
    :goto_a2
    return-object v13

    :pswitch_9f
    if-eqz v3, :cond_122

    .line 2270
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_122

    .line 2271
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2272
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2273
    invoke-virtual {v5, v1, v0, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2280
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2283
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "clipboard_whitelist_perUid"

    .line 2286
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2289
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_a5

    :cond_122
    return-object v13

    :pswitch_a0
    if-eqz v3, :cond_123

    .line 2218
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_123

    .line 2219
    aget-object v0, v3, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2220
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2221
    invoke-virtual {v5, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto :goto_a3

    .line 2224
    :cond_123
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2225
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 2230
    :goto_a3
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_124

    .line 2233
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_124

    .line 2234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_125

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2235
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_a4

    :cond_124
    return-object v13

    .line 2154
    :pswitch_a1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2158
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2159
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_125
    :goto_a5
    move-object v0, v1

    :goto_a6
    return-object v0

    :cond_126
    :goto_a7
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_75
        :pswitch_66
        :pswitch_56
        :pswitch_3a
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x741f137a -> :sswitch_b
        -0x6eef77f4 -> :sswitch_a
        -0x5d7bb47d -> :sswitch_9
        -0x44588ee5 -> :sswitch_8
        -0x420e1f50 -> :sswitch_7
        -0x17c83041 -> :sswitch_6
        -0x208922d -> :sswitch_5
        0x1b40829f -> :sswitch_4
        0x2e222643 -> :sswitch_3
        0x5a7559bf -> :sswitch_2
        0x6406da08 -> :sswitch_1
        0x68ddea58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d00b11f -> :sswitch_32
        -0x7cda2990 -> :sswitch_31
        -0x7bf265f6 -> :sswitch_30
        -0x7bc370bc -> :sswitch_2f
        -0x757aa1fb -> :sswitch_2e
        -0x6f61ea52 -> :sswitch_2d
        -0x6cd5112c -> :sswitch_2c
        -0x6c8256b9 -> :sswitch_2b
        -0x68231777 -> :sswitch_2a
        -0x5f479d3d -> :sswitch_29
        -0x5d96bdfd -> :sswitch_28
        -0x49039c7d -> :sswitch_27
        -0x3eeccaaa -> :sswitch_26
        -0x3b6d6c7b -> :sswitch_25
        -0x3169f913 -> :sswitch_24
        -0x24629eae -> :sswitch_23
        -0x105b68f3 -> :sswitch_22
        -0xb98097b -> :sswitch_21
        -0x63922de -> :sswitch_20
        -0x4a6fada -> :sswitch_1f
        -0x2cd0269 -> :sswitch_1e
        -0x2246832 -> :sswitch_1d
        -0x117c459 -> :sswitch_1c
        0x4fd98e1 -> :sswitch_1b
        0x85fa496 -> :sswitch_1a
        0x1086aa03 -> :sswitch_19
        0x12bb4d48 -> :sswitch_18
        0x18e41b33 -> :sswitch_17
        0x1d261c9d -> :sswitch_16
        0x240ce64e -> :sswitch_15
        0x32c1d30f -> :sswitch_14
        0x438d32f5 -> :sswitch_13
        0x4a948f99 -> :sswitch_12
        0x4abdeb96 -> :sswitch_11
        0x64defd38 -> :sswitch_10
        0x67050a1d -> :sswitch_f
        0x6c8af02b -> :sswitch_e
        0x6db77171 -> :sswitch_d
        0x6ec40bb4 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x75228db3 -> :sswitch_4d
        -0x5e8b707a -> :sswitch_4c
        -0x535b24ed -> :sswitch_4b
        -0x5344faa1 -> :sswitch_4a
        -0x49b19ab4 -> :sswitch_49
        -0x477f69dc -> :sswitch_48
        -0x47062780 -> :sswitch_47
        -0x2d0232dc -> :sswitch_46
        -0x1b1e2f47 -> :sswitch_45
        -0x6441366 -> :sswitch_44
        -0x2067e91 -> :sswitch_43
        0x85fa496 -> :sswitch_42
        0x10dc886c -> :sswitch_41
        0x27deb5dc -> :sswitch_40
        0x376703d8 -> :sswitch_3f
        0x3e24f8e6 -> :sswitch_3e
        0x428f670d -> :sswitch_3d
        0x432078d3 -> :sswitch_3c
        0x433f1786 -> :sswitch_3b
        0x4f9505ac -> :sswitch_3a
        0x5afa1a68 -> :sswitch_39
        0x5b05ced2 -> :sswitch_38
        0x6238abf9 -> :sswitch_37
        0x694839c4 -> :sswitch_36
        0x6ad3e979 -> :sswitch_35
        0x6c630712 -> :sswitch_34
        0x75760f09 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x678cfb16 -> :sswitch_5c
        -0x5d1cb00b -> :sswitch_5b
        -0x58dab65f -> :sswitch_5a
        -0x55d0d0ee -> :sswitch_59
        -0x495e7741 -> :sswitch_58
        -0x1abb5fa -> :sswitch_57
        0xf077a09 -> :sswitch_56
        0x1fa36ac0 -> :sswitch_55
        0x2f421cc3 -> :sswitch_54
        0x32574534 -> :sswitch_53
        0x34565e5f -> :sswitch_52
        0x38ab60cf -> :sswitch_51
        0x3ab3e61a -> :sswitch_50
        0x4ed22f86 -> :sswitch_4f
        0x6c0df1e8 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_6a
        -0x7a29af54 -> :sswitch_69
        -0x7672ed17 -> :sswitch_68
        -0x6a25634f -> :sswitch_67
        -0x437f6e25 -> :sswitch_66
        -0x1e01c219 -> :sswitch_65
        -0x14b468b1 -> :sswitch_64
        0xb8321a0 -> :sswitch_63
        0x26b3fb45 -> :sswitch_62
        0x2a7ba768 -> :sswitch_61
        0x37929121 -> :sswitch_60
        0x6e37395a -> :sswitch_5f
        0x77ba6b2b -> :sswitch_5e
        0x7ec2cd45 -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x755ab0b2 -> :sswitch_73
        -0x69b477e0 -> :sswitch_72
        -0x3d5118be -> :sswitch_71
        -0x4e0d4c0 -> :sswitch_70
        0x1d6710b8 -> :sswitch_6f
        0x2fe3c227 -> :sswitch_6e
        0x3854fcc5 -> :sswitch_6d
        0x47a72ec2 -> :sswitch_6c
        0x7ac2a216 -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x793fada2 -> :sswitch_7a
        -0x5c3258ae -> :sswitch_79
        -0x3c3a3ab9 -> :sswitch_78
        -0x394ec066 -> :sswitch_77
        0x1733e8eb -> :sswitch_76
        0x4e985da6 -> :sswitch_75
        0x4fb7d6e9 -> :sswitch_74
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x777467f8 -> :sswitch_96
        -0x75f653b4 -> :sswitch_95
        -0x526f4ac4 -> :sswitch_94
        -0x4de6cfb2 -> :sswitch_93
        -0x4378abac -> :sswitch_92
        -0x42f2906e -> :sswitch_91
        -0x308e1a98 -> :sswitch_90
        -0x29404601 -> :sswitch_8f
        -0x2360eeb0 -> :sswitch_8e
        -0xf8e19f3 -> :sswitch_8d
        0x130dedfc -> :sswitch_8c
        0x14014325 -> :sswitch_8b
        0x16233ecf -> :sswitch_8a
        0x1a458c22 -> :sswitch_89
        0x1e373fed -> :sswitch_88
        0x21074337 -> :sswitch_87
        0x22e592aa -> :sswitch_86
        0x2383ddea -> :sswitch_85
        0x2952fe03 -> :sswitch_84
        0x2d2b575b -> :sswitch_83
        0x2dd7b5a9 -> :sswitch_82
        0x38dd3e65 -> :sswitch_81
        0x3c119522 -> :sswitch_80
        0x3c3b0102 -> :sswitch_7f
        0x3d4c4243 -> :sswitch_7e
        0x3d73f371 -> :sswitch_7d
        0x49cef874 -> :sswitch_7c
        0x767a17ac -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
    .end packed-switch
.end method

.method public final queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const-string v0, "device_account_policy"

    .line 3216
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 3218
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "isAccountAdditionAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "isAccountRemovalAllowedAsUser"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "isAccountRemovalAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    const/4 v2, 0x3

    packed-switch v6, :pswitch_data_0

    return-object v1

    :pswitch_0
    if-eqz p2, :cond_4

    .line 3243
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v2, :cond_3

    goto :goto_1

    .line 3247
    :cond_3
    aget-object v1, p2, v5

    aget-object v2, p2, v4

    aget-object p2, p2, v3

    .line 3248
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 3247
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 3251
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_3

    :cond_4
    :goto_1
    return-object v1

    :pswitch_1
    if-eqz p2, :cond_6

    .line 3233
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_5

    goto :goto_2

    .line 3236
    :cond_5
    aget-object v1, p2, v5

    aget-object v4, p2, v4

    aget-object v3, p2, v3

    .line 3237
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3236
    invoke-virtual {v0, v1, v4, v3, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    .line 3239
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_3

    :cond_6
    :goto_2
    return-object v1

    :pswitch_2
    if-eqz p2, :cond_8

    .line 3220
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v2, :cond_7

    goto :goto_4

    .line 3224
    :cond_7
    aget-object v1, p2, v5

    aget-object v2, p2, v4

    aget-object p2, p2, v3

    .line 3225
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 3224
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    .line 3228
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_3
    return-object p0

    :cond_8
    :goto_4
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7117b61 -> :sswitch_2
        0x1562409c -> :sswitch_1
        0x4fb7d6e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryEmailAccount(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 5

    const-string p0, "email_account_policy"

    .line 3108
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    .line 3110
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getSecurityIncomingServerPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "getSecurityOutgoingServerPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "setSecurityInComingServerPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "setSecurityOutGoingServerPassword"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return-object v0

    :pswitch_0
    if-eqz p2, :cond_5

    .line 3112
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_4

    goto :goto_1

    .line 3116
    :cond_4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v3

    .line 3119
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 3117
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p0

    .line 3120
    new-instance p2, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3121
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    :goto_1
    return-object v0

    :pswitch_1
    if-eqz p2, :cond_7

    .line 3126
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6

    goto :goto_2

    .line 3130
    :cond_6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v3

    .line 3133
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .line 3131
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p0

    .line 3136
    new-instance p2, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3137
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    :goto_2
    return-object v0

    :pswitch_2
    if-eqz p2, :cond_9

    .line 3142
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v2, :cond_8

    goto :goto_4

    .line 3145
    :cond_8
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v3

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p2

    .line 3149
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3151
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3150
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3
    move-object p2, p0

    goto :goto_5

    :cond_9
    :goto_4
    return-object v0

    :pswitch_3
    if-eqz p2, :cond_b

    .line 3156
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v2, :cond_a

    goto :goto_6

    .line 3159
    :cond_a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object p2, p2, v3

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p2

    .line 3163
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3165
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 3164
    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :goto_5
    return-object p2

    :cond_b
    :goto_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5ed62634 -> :sswitch_3
        0x655a3d46 -> :sswitch_2
        0x705941e0 -> :sswitch_1
        0x7378391a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string v0, "enterprise_license_policy"

    .line 3324
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3326
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v2, "isServiceAvailable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "SecContentProvider2"

    const-string p1, "ENTERPRISELICENSEPOLICY : return null"

    .line 3336
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    .line 3328
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3331
    aget-object v1, p2, v1

    aget-object p2, p2, v3

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 3333
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final queryMisc(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 3

    const-string/jumbo v0, "misc_policy"

    .line 3182
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string v2, "getCurrentLockScreenString"

    .line 3184
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p2, "isNFCStateChangeAllowed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object v1

    .line 3196
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result p2

    .line 3199
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_0

    .line 3186
    :cond_1
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0

    .line 3190
    new-instance p2, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3191
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p0, p2

    :goto_0
    return-object p0

    :cond_2
    return-object v1
.end method

.method public final queryMultiUser(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 5

    const-string/jumbo v0, "multi_user_manager_service"

    .line 3031
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 3033
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "multipleUsersSupported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "multipleUsersAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "isUserRemovalAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "isUserCreationAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return-object v1

    .line 3086
    :pswitch_0
    :try_start_0
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3091
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_1

    :catch_0
    return-object v1

    :pswitch_1
    if-eqz p2, :cond_4

    .line 3036
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-lez p0, :cond_4

    .line 3037
    aget-object p0, p2, v3

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3041
    :cond_4
    :try_start_1
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p0, v3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersAllowed(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3047
    new-instance p2, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3049
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Integer;

    move-result-object p0

    .line 3048
    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p0, p2

    goto :goto_1

    :catch_1
    return-object v1

    :pswitch_2
    if-eqz p2, :cond_5

    .line 3070
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_5

    .line 3071
    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3075
    :cond_5
    :try_start_2
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserRemovalAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3081
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_1

    :catch_2
    return-object v1

    :pswitch_3
    if-eqz p2, :cond_6

    .line 3055
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_6

    .line 3056
    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3059
    :cond_6
    :try_start_3
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v3}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->isUserCreationAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3065
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_1
    return-object p0

    :catch_3
    :cond_7
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0xa355b0c -> :sswitch_3
        -0x7ddb46f -> :sswitch_2
        0x9914b0 -> :sswitch_1
        0x274445b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryPhoneRestriction(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10

    const-string/jumbo v0, "phone_restriction_policy"

    .line 3352
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 3354
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "getDisclaimerText"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "checkEnableUseOfPacketData"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v8, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "isOutgoingSmsAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v8, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "canIncomingCall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v8, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "isLimitNumberOfSmsEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v8, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "isSimLockedByAdmin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v8, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "canOutgoingSms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "isDataAllowedFromSimSlot2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v8, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "isDataAllowedFromSimSlot1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v8, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "isMmsAllowedFromSimSlot2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v8, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "isMmsAllowedFromSimSlot1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "canOutgoingCall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "canIncomingSms"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v8, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "isCopyContactToSimAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v8, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "isIncomingMmsAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v8, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "isBlockSmsWithStorageEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v8, 0x7

    goto :goto_0

    :sswitch_10
    const-string v2, "isRCSEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    const/4 v8, 0x6

    goto :goto_0

    :sswitch_11
    const-string v2, "isCallerIDDisplayAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    const/4 v8, 0x5

    goto :goto_0

    :sswitch_12
    const-string v2, "getEmergencyCallOnly"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_0

    :cond_12
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_13
    const-string v2, "isOutgoingMmsAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    move v8, v4

    goto :goto_0

    :sswitch_14
    const-string v2, "isIncomingSmsAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_0

    :cond_14
    move v8, v5

    goto :goto_0

    :sswitch_15
    const-string v2, "isWapPushAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_0

    :cond_15
    move v8, v6

    goto :goto_0

    :sswitch_16
    const-string v2, "isBlockMmsWithStorageEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_0

    :cond_16
    move v8, v7

    :goto_0
    const-string v2, "SecurityException: "

    const-string v9, "SecContentProvider2"

    packed-switch v8, :pswitch_data_0

    const-string/jumbo p0, "return null"

    .line 3549
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_0
    if-eqz p2, :cond_17

    .line 3369
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-lez p3, :cond_17

    .line 3370
    aget-object p2, p2, v7

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 3373
    :cond_17
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result p2

    .line 3374
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3396
    :pswitch_1
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3398
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_2
    if-eqz p2, :cond_19

    .line 3441
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_18

    goto :goto_1

    .line 3444
    :cond_18
    aget-object p2, p2, v7

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result p2

    .line 3445
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :cond_19
    :goto_1
    return-object v1

    .line 3390
    :pswitch_3
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3392
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :pswitch_4
    if-eqz p2, :cond_1b

    .line 3455
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_1a

    goto :goto_2

    .line 3458
    :cond_1a
    aget-object p2, p2, v7

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result p2

    .line 3459
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :cond_1b
    :goto_2
    return-object v1

    :pswitch_5
    if-eqz p2, :cond_1d

    .line 3401
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_1c

    goto :goto_3

    .line 3405
    :cond_1c
    aget-object p2, p2, v7

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result p2

    .line 3406
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :cond_1d
    :goto_3
    return-object v1

    .line 3515
    :pswitch_6
    :try_start_0
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v6

    .line 3518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isDataAllowedFromSimSlot(1) result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    .line 3520
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :goto_4
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3503
    :pswitch_7
    :try_start_1
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isDataAllowedFromSimSlot(I)Z

    move-result v6

    .line 3506
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isDataAllowedFromSimSlot(0) result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p2

    .line 3508
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :goto_5
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3539
    :pswitch_8
    :try_start_2
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result v6

    .line 3542
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isMmsAllowedFromSimSlot(1) result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    .line 3544
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :goto_6
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3527
    :pswitch_9
    :try_start_3
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isMmsAllowedFromSimSlot(I)Z

    move-result v6

    .line 3530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isMmsAllowedFromSimSlot(0) result "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception p2

    .line 3532
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    :goto_7
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3463
    :pswitch_a
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0

    .line 3468
    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3471
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object p0, p1

    goto/16 :goto_b

    :pswitch_b
    if-eqz p2, :cond_1f

    .line 3448
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_1e

    goto :goto_8

    .line 3451
    :cond_1e
    aget-object p2, p2, v7

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result p2

    .line 3452
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :cond_1f
    :goto_8
    return-object v1

    :pswitch_c
    if-eqz p2, :cond_21

    .line 3382
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    if-gtz p3, :cond_20

    goto :goto_9

    .line 3386
    :cond_20
    aget-object p2, p2, v7

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result p2

    .line 3387
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    :cond_21
    :goto_9
    return-object v1

    .line 3356
    :pswitch_d
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3358
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCopyContactToSimAllowed = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3409
    :pswitch_e
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3412
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3363
    :pswitch_f
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3365
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto/16 :goto_b

    .line 3479
    :pswitch_10
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_24

    if-ge v2, v4, :cond_22

    goto :goto_a

    .line 3484
    :cond_22
    aget-object v1, p2, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3485
    aget-object v2, p2, v6

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 3486
    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 3489
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3493
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v3

    .line 3497
    :cond_23
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b

    :cond_24
    :goto_a
    return-object v1

    .line 3431
    :pswitch_11
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3433
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b

    .line 3426
    :pswitch_12
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3428
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b

    .line 3421
    :pswitch_13
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3423
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b

    .line 3415
    :pswitch_14
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3418
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b

    .line 3436
    :pswitch_15
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3438
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_b

    .line 3377
    :pswitch_16
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p2

    .line 3379
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_b
    return-object p0

    :cond_25
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c20b2e4 -> :sswitch_16
        -0x75b6adce -> :sswitch_15
        -0x516c3a61 -> :sswitch_14
        -0x4b848555 -> :sswitch_13
        -0x45f6c0db -> :sswitch_12
        -0x3f23242a -> :sswitch_11
        -0x36ade6b7 -> :sswitch_10
        -0x308af1de -> :sswitch_f
        -0xb24e11b -> :sswitch_e
        0x1134efad -> :sswitch_d
        0x1410b963 -> :sswitch_c
        0x14e927da -> :sswitch_b
        0x174ab65e -> :sswitch_a
        0x2ef792e5 -> :sswitch_9
        0x2ef792e6 -> :sswitch_8
        0x30fbd25a -> :sswitch_7
        0x30fbd25b -> :sswitch_6
        0x42bd705d -> :sswitch_5
        0x617af081 -> :sswitch_4
        0x6b27fd59 -> :sswitch_3
        0x6dfeff94 -> :sswitch_2
        0x6e342165 -> :sswitch_1
        0x7be8d885 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final queryVPN(Ljava/lang/String;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 5

    const-string/jumbo v0, "vpn_policy"

    .line 3269
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3271
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "isUserChangeProfilesAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "isUserSetAlwaysOnAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "isUserAddProfilesAllowed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "checkRacoonSecurity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    return-object v1

    :pswitch_0
    if-eqz p2, :cond_4

    .line 3293
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_4

    .line 3294
    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3296
    :cond_4
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    if-eqz p2, :cond_5

    .line 3302
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_5

    .line 3303
    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3305
    :cond_5
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3307
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_1

    :pswitch_2
    if-eqz p2, :cond_6

    .line 3283
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_6

    .line 3284
    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 3286
    :cond_6
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, p2, v3}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p2

    .line 3288
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    goto :goto_1

    :pswitch_3
    if-eqz p2, :cond_8

    .line 3273
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_7

    goto :goto_2

    .line 3276
    :cond_7
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->checkRacoonSecurity(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;)Z

    move-result p2

    .line 3278
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_8
    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x20839282 -> :sswitch_3
        0x20e4e472 -> :sswitch_2
        0x528665ad -> :sswitch_1
        0x75693779 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
