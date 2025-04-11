.class public Lcom/android/server/BinaryTransparencyService$Digest;
.super Ljava/lang/Object;
.source "BinaryTransparencyService.java"


# instance fields
.field public algorithm:I

.field public value:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/BinaryTransparencyService$Digest;->algorithm:I

    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService$Digest;->value:[B

    return-void
.end method
