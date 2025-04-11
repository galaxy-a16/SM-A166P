.class public Lcom/android/server/media/MediaSessionRecord$3;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 987
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 988
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;I)V

    if-eqz v0, :cond_1

    .line 990
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushVolumeUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    :cond_1
    return-void
.end method
