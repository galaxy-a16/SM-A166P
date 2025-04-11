.class public Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig$MessageServer;,
        Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig$MembershipServer;,
        Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig$BlackboardServer;,
        Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig$AuthServer;
    }
.end annotation


# static fields
.field private static final KM_BASE_URL:Ljava/lang/String; = "https://api.knox-matrix.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
