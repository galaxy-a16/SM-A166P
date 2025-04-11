.class public final Lcom/google/protobuf/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/protobuf/l0;

.field public final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/protobuf/a0;->b:[B

    sget-object v1, Lcom/google/protobuf/n0;->a:Ljava/util/logging/Logger;

    new-instance v1, Lcom/google/protobuf/l0;

    invoke-direct {v1, v0, p1}, Lcom/google/protobuf/l0;-><init>([BI)V

    iput-object v1, p0, Lcom/google/protobuf/a0;->a:Lcom/google/protobuf/l0;

    return-void
.end method
