.class public Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "PackageFeatureDebugCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "-setForceDisplayCompatMode"

    .line 92
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "blocklist"

    .line 111
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "b"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "w"

    :goto_0
    return-object p0
.end method

.method public assertValidOptions(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 97
    array-length v0, p2

    const/4 v1, 0x2

    const-string v2, "blocklist|allowlist"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    aget-object v0, p2, v3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "allowlist"

    .line 102
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "blocklist"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 103
    invoke-virtual {p0, p1, p3, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    return v0

    .line 98
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p3, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
