.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/manager/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/e;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/e;->b:Ljava/util/function/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/e;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/e;->b:Ljava/util/function/Supplier;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
