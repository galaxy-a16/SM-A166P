.class public abstract synthetic Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$pm$PackageManagerService$InstallLocaleOverlaysType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 9506
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->values()[Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PackageManagerService$9;->$SwitchMap$com$android$server$pm$PackageManagerService$InstallLocaleOverlaysType:[I

    :try_start_0
    sget-object v1, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_INSTALL:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService$9;->$SwitchMap$com$android$server$pm$PackageManagerService$InstallLocaleOverlaysType:[I

    sget-object v1, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_UNINSTALL_UPDATES:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/pm/PackageManagerService$9;->$SwitchMap$com$android$server$pm$PackageManagerService$InstallLocaleOverlaysType:[I

    sget-object v1, Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;->PACKAGE_ENABLE:Lcom/android/server/pm/PackageManagerService$InstallLocaleOverlaysType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
