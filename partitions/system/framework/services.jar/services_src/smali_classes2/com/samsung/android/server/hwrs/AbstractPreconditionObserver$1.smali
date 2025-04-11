.class public Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;
.super Landroid/database/ContentObserver;
.source "AbstractPreconditionObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;Landroid/os/Handler;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;

    invoke-static {p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->-$$Nest$fgetURI_CAMERASHARE(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    iget-object p0, p0, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver$1;->this$0:Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;->-$$Nest$mhandleSettingUpdate(Lcom/samsung/android/server/hwrs/AbstractPreconditionObserver;I)V

    :cond_1
    return-void
.end method
