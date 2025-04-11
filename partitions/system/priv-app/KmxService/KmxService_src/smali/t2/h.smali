.class public final synthetic Lt2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .locals 0

    iput p1, p0, Lt2/h;->a:I

    iput-wide p2, p0, Lt2/h;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lt2/h;->a:I

    iget-wide v1, p0, Lt2/h;->b:J

    const/4 p0, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    invoke-virtual {p1, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    new-instance p1, Lt2/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1, v2}, Lt2/h;-><init>(IJ)V

    invoke-static {p0, p1}, Lt2/k;->z(Landroid/database/Cursor;Lt2/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq2/f;

    return-object p0

    :goto_0
    check-cast p1, Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    new-instance v0, Lq2/f;

    invoke-direct {v0, p0, p1, v1, v2}, Lq2/f;-><init>(JJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
