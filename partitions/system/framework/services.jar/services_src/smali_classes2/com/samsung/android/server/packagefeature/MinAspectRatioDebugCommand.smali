.class public abstract Lcom/samsung/android/server/packagefeature/MinAspectRatioDebugCommand;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;
.source "PackageFeatureDebugCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "-setFixedAspectRatio"

    const-string v1, "-ratio"

    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public assertValidOptions(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 122
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    array-length v0, p2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    aget-object p2, p2, v1

    if-nez p2, :cond_2

    :cond_1
    const-string p2, "longSize:shortSize"

    .line 123
    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;->printOptions(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v2
.end method
