.class public final Lva/k;
.super Landroidx/room/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;I)V
    .locals 0

    iput p2, p0, Lva/k;->a:I

    invoke-direct {p0, p1}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final a(La1/i;Lwa/e;)V
    .locals 6

    iget p0, p0, Lva/k;->a:I

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget p0, p2, Lwa/e;->a:I

    int-to-long v4, p0

    invoke-interface {p1, v3, v4, v5}, La1/g;->W(IJ)V

    iget-object p0, p2, Lwa/e;->b:Ljava/lang/String;

    if-nez p0, :cond_0

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_0
    iget-object p0, p2, Lwa/e;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_1
    iget p0, p2, Lwa/e;->d:I

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, La1/g;->W(IJ)V

    return-void

    :goto_2
    iget p0, p2, Lwa/e;->a:I

    int-to-long v4, p0

    invoke-interface {p1, v3, v4, v5}, La1/g;->W(IJ)V

    iget-object p0, p2, Lwa/e;->b:Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-interface {p1, v2}, La1/g;->A(I)V

    goto :goto_3

    :cond_2
    invoke-interface {p1, v2, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lwa/e;->c:Ljava/lang/String;

    if-nez p0, :cond_3

    invoke-interface {p1, v1}, La1/g;->A(I)V

    goto :goto_4

    :cond_3
    invoke-interface {p1, v1, p0}, La1/g;->r(ILjava/lang/String;)V

    :goto_4
    iget p0, p2, Lwa/e;->d:I

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, La1/g;->W(IJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic bind(La1/i;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lva/k;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p2, Lwa/e;

    invoke-virtual {p0, p1, p2}, Lva/k;->a(La1/i;Lwa/e;)V

    return-void

    :goto_0
    check-cast p2, Lwa/e;

    invoke-virtual {p0, p1, p2}, Lva/k;->a(La1/i;Lwa/e;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lva/k;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR REPLACE INTO `state` (`index`,`key`,`value`,`block_stamp`) VALUES (?,?,?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR IGNORE INTO `state` (`index`,`key`,`value`,`block_stamp`) VALUES (?,?,?,?)"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
