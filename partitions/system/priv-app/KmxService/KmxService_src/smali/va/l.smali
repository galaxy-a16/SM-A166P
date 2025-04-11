.class public final Lva/l;
.super Landroidx/room/f0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/security/fabric/chain/extension/android/database/AppDatabase;I)V
    .locals 0

    iput p2, p0, Lva/l;->a:I

    invoke-direct {p0, p1}, Landroidx/room/f0;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final createQuery()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lva/l;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DELETE FROM state"

    return-object p0

    :pswitch_0
    const-string p0, "DELETE FROM state WHERE `index` = ?"

    return-object p0

    :pswitch_1
    const-string p0, "UPDATE state SET value = ?, block_stamp = ? WHERE `index` = ?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
