.class public final Lcom/google/protobuf/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u5;
.implements Lcom/google/protobuf/e6;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/protobuf/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/protobuf/b;I)V
    .locals 0

    iput p2, p0, Lcom/google/protobuf/o5;->a:I

    iput-object p1, p0, Lcom/google/protobuf/o5;->b:Lcom/google/protobuf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/o5;->a:I

    iget-object p0, p0, Lcom/google/protobuf/o5;->b:Lcom/google/protobuf/b;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lcom/google/protobuf/b;->a()V

    return-void

    :goto_0
    invoke-interface {p0}, Lcom/google/protobuf/b;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
