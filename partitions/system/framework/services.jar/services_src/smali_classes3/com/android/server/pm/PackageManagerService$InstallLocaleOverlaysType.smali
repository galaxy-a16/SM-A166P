.class final enum Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;
.super Ljava/lang/Enum;
.source "PackageManagerService.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

.field public static final enum PACKAGE_ENABLE:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

.field public static final enum PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

.field public static final enum PACKAGE_UNINSTALL_UPDATES:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;


# direct methods
.method public static synthetic $values()[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;
    .locals 3

    .line 1212
    sget-object v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    sget-object v1, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_UNINSTALL_UPDATES:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    sget-object v2, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_ENABLE:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1213
    new-instance v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    const-string v1, "PACKAGE_INSTALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 1214
    new-instance v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    const-string v1, "PACKAGE_UNINSTALL_UPDATES"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_UNINSTALL_UPDATES:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 1215
    new-instance v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    const-string v1, "PACKAGE_ENABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_ENABLE:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    .line 1212
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->$values()[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->$VALUES:[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;
    .locals 1

    .line 1212
    const-class v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;
    .locals 1

    .line 1212
    sget-object v0, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->$VALUES:[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    invoke-virtual {v0}, [Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    return-object v0
.end method
