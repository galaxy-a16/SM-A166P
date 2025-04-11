.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/g;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/g;->b:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/g;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/g;->b:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->b(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->a(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->i(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->h(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->f(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;->d(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$PeerAgent;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
