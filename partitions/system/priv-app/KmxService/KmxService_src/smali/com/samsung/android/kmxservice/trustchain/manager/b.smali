.class public final synthetic Lcom/samsung/android/kmxservice/trustchain/manager/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/kmxservice/trustchain/manager/b;->a:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/trustchain/manager/b;->b:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/b;->a:I

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/manager/b;->b:Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->a(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;->b(Lcom/samsung/android/kmxservice/trustchain/manager/MemberManager;)Lcom/samsung/android/kmxservice/trustchain/utils/ResultCode;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
