.class public final Lva/h;
.super Landroidx/room/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lva/j;


# direct methods
.method public constructor <init>(Lva/j;Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;)V
    .locals 0

    iput-object p1, p0, Lva/h;->a:Lva/j;

    invoke-direct {p0, p2}, Landroidx/room/g;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final bind(La1/i;Ljava/lang/Object;)V
    .locals 3

    check-cast p2, Lwa/d;

    iget v0, p2, Lwa/d;->a:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, La1/g;->W(IJ)V

    iget-object p0, p0, Lva/h;->a:Lva/j;

    iget-object p0, p0, Lva/j;->c:Lua/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lwa/d;->b:Lcom/samsung/security/fabric/chain/core/data/signature/SealProto$Seal;

    invoke-virtual {p0}, Lcom/google/protobuf/f;->toByteArray()[B

    move-result-object p0

    const/4 p2, 0x2

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, La1/g;->A(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p0}, La1/g;->i0(I[B)V

    :goto_0
    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR REPLACE INTO `seal` (`block_number`,`seal`) VALUES (?,?)"

    return-object p0
.end method
