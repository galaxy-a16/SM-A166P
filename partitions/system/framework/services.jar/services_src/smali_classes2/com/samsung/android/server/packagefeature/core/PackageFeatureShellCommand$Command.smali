.class final enum Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
.super Ljava/lang/Enum;
.source "PackageFeaturesShellCommand.java"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

.field public static final enum SET_POLICY_DISABLED_COMMAND:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;


# instance fields
.field mCommand:Ljava/lang/String;


# direct methods
.method public static synthetic $values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .locals 4

    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    sget-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    sget-object v2, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    sget-object v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->SET_POLICY_DISABLED_COMMAND:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const/4 v1, 0x0

    const-string v2, "-packagefeature"

    const-string v3, "PACKAGE_FEATURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const/4 v1, 0x1

    const-string v2, "ForceUpdate"

    const-string v3, "PACKAGE_FEATURE_OPTION_FORCE_UPDATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const/4 v1, 0x2

    const-string v2, "PolicyReset"

    const-string v3, "PACKAGE_FEATURE_OPTION_POLICY_RESET"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    const/4 v1, 0x3

    const-string v2, "-setPolicyDisabled"

    const-string v3, "SET_POLICY_DISABLED_COMMAND"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->SET_POLICY_DISABLED_COMMAND:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-static {}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .locals 1

    const-class v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    return-object v0
.end method
