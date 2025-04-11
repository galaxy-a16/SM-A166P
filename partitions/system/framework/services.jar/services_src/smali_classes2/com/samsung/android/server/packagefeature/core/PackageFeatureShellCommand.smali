.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;
.super Ljava/lang/Object;
.source "PackageFeaturesShellCommand.java"


# instance fields
.field public final mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    return-void
.end method


# virtual methods
.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object v0, v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iget-object p3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p3, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->dump(Ljava/io/PrintWriter;)V

    array-length p3, p2

    if-eq p3, v3, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    aget-object p2, p2, v2

    sget-object p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_FORCE_UPDATE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p3, p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p2, "Started update."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->initializeGroups()V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupData(Ljava/lang/String;)V

    return v3

    :cond_1
    sget-object p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->PACKAGE_FEATURE_OPTION_POLICY_RESET:Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;

    iget-object p3, p3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand$Command;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Started reset."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->deleteCacheFiles()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->initializeGroups()V

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->updateGroupData(Ljava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_9

    aget-object v6, v0, v5

    iget-boolean v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v7, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->mCommands:[Ljava/lang/String;

    array-length v9, v8

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    invoke-virtual {v11, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->assertValidOptions(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    return v3

    :cond_6
    aget-object v0, p2, v2

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, p2

    if-le v2, v3, :cond_7

    aget-object v1, p2, v3

    :cond_7
    invoke-virtual {v7, p3, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureShellCommand;->mImpl:Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    invoke-virtual {p0, v6, v0, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;->executeDebugMode(Lcom/samsung/android/server/packagefeature/PackageFeature;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    return v2
.end method
