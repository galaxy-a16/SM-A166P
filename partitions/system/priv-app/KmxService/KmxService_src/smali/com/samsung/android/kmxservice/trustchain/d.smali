.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/ChainService;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcom/samsung/android/kmxservice/trustchain/d;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/d;->b:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/d;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/trustchain/d;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/d;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/d;->b:Lcom/samsung/android/kmxservice/trustchain/ChainService;

    iget-object v2, p0, Lcom/samsung/android/kmxservice/trustchain/d;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/d;->c:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->H(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-static {v1, p0, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->C(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
