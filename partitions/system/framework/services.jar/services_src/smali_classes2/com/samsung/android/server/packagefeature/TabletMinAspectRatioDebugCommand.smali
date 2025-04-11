.class public Lcom/samsung/android/server/packagefeature/TabletMinAspectRatioDebugCommand;
.super Lcom/samsung/android/server/packagefeature/MinAspectRatioDebugCommand;
.source "PackageFeatureDebugCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/MinAspectRatioDebugCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "19.5:9"

    :goto_0
    return-object p2
.end method
