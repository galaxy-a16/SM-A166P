.class public Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "KMX|"

    invoke-static {v0, p0}, Lorg/spongycastle/jcajce/provider/digest/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
