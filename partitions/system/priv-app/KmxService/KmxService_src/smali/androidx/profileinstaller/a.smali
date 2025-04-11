.class public final synthetic Landroidx/profileinstaller/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Landroidx/profileinstaller/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/profileinstaller/a;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/profileinstaller/a;->b:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/io/Serializable;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/profileinstaller/a;->a:I

    iput-object p1, p0, Landroidx/profileinstaller/a;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/profileinstaller/a;->b:I

    iput-object p3, p0, Landroidx/profileinstaller/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/profileinstaller/a;->a:I

    iget-object v1, p0, Landroidx/profileinstaller/a;->c:Ljava/lang/Object;

    iget v2, p0, Landroidx/profileinstaller/a;->b:I

    iget-object p0, p0, Landroidx/profileinstaller/a;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Landroidx/profileinstaller/d;

    invoke-interface {p0, v2, v1}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/profileinstaller/b;

    iget-object p0, p0, Landroidx/profileinstaller/b;->b:Landroidx/profileinstaller/d;

    invoke-interface {p0, v2, v1}, Landroidx/profileinstaller/d;->l(ILjava/lang/Object;)V

    return-void

    :goto_0
    check-cast p0, Lcom/samsung/android/kmxservice/trustchain/ChainService;

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/kmxservice/trustchain/ChainService;->U(Lcom/samsung/android/kmxservice/trustchain/ChainService;Ljava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
