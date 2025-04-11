.class public final Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;
.super Landroid/os/Handler;
.source "BigDataLoggingService.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/BigDataLoggingService;Landroid/os/Looper;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/displaysolution/BigDataLoggingService$ScrControlHandler;->this$0:Lcom/samsung/android/displaysolution/BigDataLoggingService;

    const/4 p1, 0x0

    .line 139
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 144
    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
