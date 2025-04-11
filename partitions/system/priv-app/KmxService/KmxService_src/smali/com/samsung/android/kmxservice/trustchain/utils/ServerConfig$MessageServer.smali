.class public Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig$MessageServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/trustchain/utils/ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageServer"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "mapi.knox-matrix.com"

.field public static final PORT:Ljava/lang/String; = "443"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
