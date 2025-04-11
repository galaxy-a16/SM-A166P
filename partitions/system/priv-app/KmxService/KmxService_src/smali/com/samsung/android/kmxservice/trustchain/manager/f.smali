.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/manager/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/kmxservice/trustchain/manager/f;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/f;->b:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/f;->a:I

    iget-object v1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/f;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/f;->b:Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->a(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;->c(Lcom/samsung/android/kmxservice/trustchain/manager/SolbManager$ClientAgent;Ljava/lang/String;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
