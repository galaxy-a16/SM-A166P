.class public Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig$BlackboardServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlackboardServer"
.end annotation


# static fields
.field public static final BlackboardURL:Ljava/lang/String; = "https://api.knox-matrix.com/blackboard/v1"

.field private static final PATH:Ljava/lang/String; = "/blackboard/"

.field private static final VERSION:Ljava/lang/String; = "v1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
