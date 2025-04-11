.class final enum Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
.super Ljava/lang/Enum;
.source "ApplicationPolicy.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PERMISSION_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_AVR_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARCACHE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARCACHE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARDATA_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLEARDATA_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLIPBOARD_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_CLIPBOARD_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_DISABLED_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_DOZEMODE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_FOCUSMONITORING_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_FOCUSMONITORING_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLER_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_INSTALLER_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_NOTIFICATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_NOTIFICATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_OCSP_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_REVOCATION_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_START_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_START_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_STOP_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_STOP_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_UPDATE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_UPDATE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_WIDGET_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum PKGNAME_WIDGET_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum SIGNATURE_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum SIGNATURE_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum SIGNATURE_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum UNINSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final enum UNINSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

.field public static final sAppApiMaskToKey:Ljava/util/Map;


# instance fields
.field private adminMapKey:Ljava/lang/String;

.field private mask:I

.field private table:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 34

    .line 387
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_DISABLED_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v3, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PERMISSION_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_STOP_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_STOP_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v8, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_WIDGET_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_WIDGET_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_NOTIFICATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v11, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_NOTIFICATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARDATA_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARDATA_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v14, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARCACHE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v15, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARCACHE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v16, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_START_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v17, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_START_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v18, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLIPBOARD_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v19, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLIPBOARD_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v20, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_FOCUSMONITORING_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v21, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_FOCUSMONITORING_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v22, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_DOZEMODE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_AVR_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v24, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_REVOCATION_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v25, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_OCSP_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v26, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_UPDATE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v27, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_UPDATE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v28, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->UNINSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v29, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->UNINSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v30, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLER_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v31, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLER_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v32, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    sget-object v33, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    filled-new-array/range {v0 .. v33}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 13

    .line 388
    new-instance v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v1, "PKGNAME_DISABLED_LIST"

    const/4 v2, 0x0

    const-string v3, "PackageNameDisabledList"

    const/4 v4, 0x2

    const-string v5, "APPLICATION"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_DISABLED_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 390
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_INSTALLATION_BLACKLIST"

    const/4 v9, 0x1

    const-string v10, "PackageNameInstallationBlacklist"

    const/4 v11, 0x4

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 392
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_INSTALLATION_WHITELIST"

    const/4 v3, 0x2

    const-string v4, "PackageNameInstallationWhitelist"

    const/16 v5, 0x8

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 394
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PERMISSION_INSTALLATION_BLACKLIST"

    const/4 v9, 0x3

    const-string v10, "PermissionInstallationBlacklist"

    const/4 v11, 0x0

    const-string v12, "APPLICATION_PERMISSION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PERMISSION_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 396
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "SIGNATURE_INSTALLATION_BLACKLIST"

    const/4 v3, 0x4

    const-string v4, "SignatureInstallationBlacklist"

    const/4 v5, 0x1

    const-string/jumbo v6, "signature"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_INSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 399
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "SIGNATURE_INSTALLATION_WHITELIST"

    const/4 v9, 0x5

    const-string v10, "SignatureInstallationWhitelist"

    const/4 v11, 0x2

    const-string/jumbo v12, "signature"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_INSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 402
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_STOP_BLACKLIST"

    const/4 v3, 0x6

    const-string v4, "PackageNameStopBlacklist"

    const/16 v5, 0x10

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_STOP_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 404
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_STOP_WHITELIST"

    const/4 v9, 0x7

    const-string v10, "PackageNameStopWhitelist"

    const/16 v11, 0x20

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_STOP_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 406
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_WIDGET_WHITELIST"

    const/16 v3, 0x8

    const-string v4, "PackageNameWidgetWhitelist"

    const/16 v5, 0x80

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_WIDGET_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 408
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_WIDGET_BLACKLIST"

    const/16 v9, 0x9

    const-string v10, "PackageNameWidgetBlacklist"

    const/16 v11, 0x40

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_WIDGET_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 410
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_NOTIFICATION_BLACKLIST"

    const/16 v3, 0xa

    const-string v4, "PackageNameNotificationBlacklist"

    const/16 v5, 0x100

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_NOTIFICATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 412
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_NOTIFICATION_WHITELIST"

    const/16 v9, 0xb

    const-string v10, "PackageNameNotificationWhitelist"

    const/16 v11, 0x200

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_NOTIFICATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 414
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_CLEARDATA_BLACKLIST"

    const/16 v3, 0xc

    const-string v4, "PackageNameClearDataBlacklist"

    const/16 v5, 0x2000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARDATA_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 416
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_CLEARDATA_WHITELIST"

    const/16 v9, 0xd

    const-string v10, "PackageNameClearDataWhitelist"

    const/16 v11, 0x4000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARDATA_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 418
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_CLEARCACHE_BLACKLIST"

    const/16 v3, 0xe

    const-string v4, "PackageNameClearCacheBlacklist"

    const v5, 0x8000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARCACHE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 420
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_CLEARCACHE_WHITELIST"

    const/16 v9, 0xf

    const-string v10, "PackageNameClearCacheWhitelist"

    const/high16 v11, 0x10000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLEARCACHE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 422
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_START_BLACKLIST"

    const/16 v3, 0x10

    const-string v4, "PackageNameStartBlacklist"

    const/high16 v5, 0x80000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_START_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 424
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_START_WHITELIST"

    const/16 v9, 0x11

    const-string v10, "PackageNameStartWhitelist"

    const/4 v11, 0x0

    const-string v12, "INVALID_TABLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_START_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 426
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_CLIPBOARD_BLACKLIST"

    const/16 v3, 0x12

    const-string v4, "PackageNameDisableClipboardBlackList"

    const/high16 v5, 0x200000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLIPBOARD_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 428
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_CLIPBOARD_WHITELIST"

    const/16 v9, 0x13

    const-string v10, "PackageNameDisableClipboardWhitelist"

    const/high16 v11, 0x400000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CLIPBOARD_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 430
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_FOCUSMONITORING_LIST"

    const/16 v3, 0x14

    const-string v4, "PackageNameFocusMonitoringList"

    const/high16 v5, 0x800000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_FOCUSMONITORING_LIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 432
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_FOCUSMONITORING_WHITELIST"

    const/16 v9, 0x15

    const-string v10, "PackageNameFocusMonitoringWhiteList"

    const/4 v11, 0x0

    const-string v12, "INVALID_TABLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_FOCUSMONITORING_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 434
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_DOZEMODE_WHITELIST"

    const/16 v3, 0x16

    const-string v4, "PackageNameDozeModeWhiteList"

    const/high16 v5, 0x1000000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_DOZEMODE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 436
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_AVR_WHITELIST"

    const/16 v9, 0x17

    const-string v10, "PackageNameAvrWhitelist"

    const/high16 v11, 0x20000000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_AVR_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 438
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_REVOCATION_CHECK"

    const/16 v3, 0x18

    const-string v4, "RevocationCheck"

    const/16 v5, 0x800

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_REVOCATION_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 440
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_OCSP_CHECK"

    const/16 v9, 0x19

    const-string v10, "OcspCheck"

    const/16 v11, 0x1000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_OCSP_CHECK:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 442
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_UPDATE_WHITELIST"

    const/16 v3, 0x1a

    const-string v4, "PackageNameUpdateWhitelist"

    const/high16 v5, 0x40000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_UPDATE_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 444
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_UPDATE_BLACKLIST"

    const/16 v9, 0x1b

    const-string v10, "PackageNameUpdateBlacklist"

    const/high16 v11, 0x20000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_UPDATE_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 446
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "UNINSTALLATION_BLACKLIST"

    const/16 v3, 0x1c

    const-string v4, "UninstallationBlacklist"

    const/4 v5, 0x1

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->UNINSTALLATION_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 448
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "UNINSTALLATION_WHITELIST"

    const/16 v9, 0x1d

    const-string v10, "UninstallationWhitelist"

    const/16 v11, 0x400

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->UNINSTALLATION_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 450
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_INSTALLER_WHITELIST"

    const/16 v3, 0x1e

    const-string v4, "PackageNameInstallerWhiteList"

    const/high16 v5, 0x2000000

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLER_WHITELIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 452
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "PKGNAME_INSTALLER_BLACKLIST"

    const/16 v9, 0x1f

    const-string v10, "PackageNameInstallerBlackList"

    const/high16 v11, 0x4000000

    const-string v12, "APPLICATION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_INSTALLER_BLACKLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 454
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v2, "PKGNAME_CAMERA_ALLOWLIST"

    const/16 v3, 0x20

    const-string v4, "PackageNameCameraAllowlist"

    const/high16 v5, 0x40000000    # 2.0f

    const-string v6, "APPLICATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->PKGNAME_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 456
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    const-string v8, "SIGNATURE_CAMERA_ALLOWLIST"

    const/16 v9, 0x21

    const-string v10, "SignatureCameraAllowlist"

    const/4 v11, 0x4

    const-string/jumbo v12, "signature"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->SIGNATURE_CAMERA_ALLOWLIST:Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 387
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    .line 489
    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 490
    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->getTable()Ljava/lang/String;

    move-result-object v4

    const-string v5, "APPLICATION"

    if-ne v4, v5, :cond_0

    .line 491
    sget-object v4, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->getMask()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->getAdminMapKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 464
    iput-object p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    .line 465
    iput p4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    .line 466
    iput-object p5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    return-void
.end method

.method public static getAppApiMaskKeyMap()Ljava/util/Map;
    .locals 2

    .line 497
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->sAppApiMaskToKey:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 1

    .line 387
    const-class v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;
    .locals 1

    .line 387
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->$VALUES:[Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;

    return-object v0
.end method


# virtual methods
.method public getAdminMapKey()Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMask()I
    .locals 0

    .line 479
    iget p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->mask:I

    return p0
.end method

.method public getTable()Ljava/lang/String;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->table:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$AppControlStateEnum;->adminMapKey:Ljava/lang/String;

    return-object p0
.end method
