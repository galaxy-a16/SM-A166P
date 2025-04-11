.class public final Lcom/google/protobuf/b4;
.super Lcom/google/protobuf/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/protobuf/b4;->a:I

    iput-object p1, p0, Lcom/google/protobuf/b4;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/protobuf/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePartialFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/b4;->a:I

    iget-object p0, p0, Lcom/google/protobuf/b4;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/protobuf/e4;

    iget-object p0, p0, Lcom/google/protobuf/e4;->a:Lcom/google/protobuf/h3;

    new-instance v0, Lcom/google/protobuf/d4;

    invoke-direct {v0, p0}, Lcom/google/protobuf/d4;-><init>(Lcom/google/protobuf/h3;)V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/a;->mergeFrom(Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)Lcom/google/protobuf/a;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lcom/google/protobuf/d4;->c()Lcom/google/protobuf/e4;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0}, Lcom/google/protobuf/d4;->c()Lcom/google/protobuf/e4;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {v0}, Lcom/google/protobuf/d4;->c()Lcom/google/protobuf/e4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/r8;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :goto_0
    new-instance v0, Lcom/google/protobuf/z7;

    check-cast p0, Lcom/google/protobuf/y7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/protobuf/z7;-><init>(Lcom/google/protobuf/y7;Lcom/google/protobuf/i0;Lcom/google/protobuf/t4;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
