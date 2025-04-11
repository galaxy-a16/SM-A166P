.class public final synthetic Ll6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ll6/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Ll6/d;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lo6/b;

    sget-object p0, Lo6/e;->l:Lv5/a;

    iget p0, p1, Lo6/b;->c:I

    return p0

    :pswitch_1
    invoke-static {p1}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    sget-object p0, Lm6/a;->m:Lv5/a;

    const/4 p0, 0x0

    throw p0

    :pswitch_2
    instance-of p0, p1, Ll6/g;

    if-eqz p0, :cond_0

    check-cast p1, Ll6/g;

    iget-object p0, p1, Ll6/g;->c:Le7/b;

    iget p0, p0, Lu6/i;->c:I

    goto :goto_0

    :cond_0
    check-cast p1, Li7/a;

    iget p0, p1, Lu6/d;->e:I

    :goto_0
    return p0

    :goto_1
    check-cast p1, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-virtual {p1}, Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;->getSignaturesCount()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
