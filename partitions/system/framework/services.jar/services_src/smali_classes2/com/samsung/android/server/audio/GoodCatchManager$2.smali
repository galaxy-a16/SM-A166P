.class public Lcom/samsung/android/server/audio/GoodCatchManager$2;
.super Ljava/lang/Object;
.source "GoodCatchManager.java"

# interfaces
.implements Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/GoodCatchManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager$2;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Ljava/lang/String;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.GoodCatchManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$2;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fputmVibrationFunc(Lcom/samsung/android/server/audio/GoodCatchManager;Z)V

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.GoodCatchManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager$2;->this$0:Lcom/samsung/android/server/audio/GoodCatchManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/GoodCatchManager;->-$$Nest$fputmVibrationFunc(Lcom/samsung/android/server/audio/GoodCatchManager;Z)V

    return-void
.end method
