.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/ChainService;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/b;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/b;->b:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/b;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/b;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/b;->b:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->D(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->W(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->S(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
