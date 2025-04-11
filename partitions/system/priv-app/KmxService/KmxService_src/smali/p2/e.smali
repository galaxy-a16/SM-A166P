.class public final Lp2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lob/a;

.field public final c:Lob/a;

.field public final d:Lob/a;


# direct methods
.method public synthetic constructor <init>(Lob/a;Lcom/google/gson/internal/d;Lcom/google/gson/internal/d;I)V
    .locals 0

    iput p4, p0, Lp2/e;->a:I

    iput-object p1, p0, Lp2/e;->b:Lob/a;

    iput-object p2, p0, Lp2/e;->c:Lob/a;

    iput-object p3, p0, Lp2/e;->d:Lob/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lp2/e;->a:I

    iget-object v1, p0, Lp2/e;->d:Lob/a;

    iget-object v2, p0, Lp2/e;->c:Lob/a;

    iget-object p0, p0, Lp2/e;->b:Lob/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/a;

    new-instance v2, Lp2/d;

    invoke-direct {v2, p0, v0, v1}, Lp2/d;-><init>(Landroid/content/Context;Lv2/a;Lv2/a;)V

    return-object v2

    :goto_0
    invoke-interface {p0}, Lob/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {v2}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Lob/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lt2/n;

    invoke-direct {v2, v1, p0, v0}, Lt2/n;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
