.class public Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;
.super Landroid/database/ContentObserver;
.source "ChinaGmsToggleUtils.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;Landroid/os/Handler;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;->this$0:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;->this$0:Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setGmsEnabledSetting(I)V

    return-void
.end method
