.class public final synthetic Lcom/samsung/android/kmxservice/common/update/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/kmxservice/common/update/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/common/update/b;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->a()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {}, Lcom/samsung/android/kmxservice/common/update/ContextFactory$ContextHolder;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
