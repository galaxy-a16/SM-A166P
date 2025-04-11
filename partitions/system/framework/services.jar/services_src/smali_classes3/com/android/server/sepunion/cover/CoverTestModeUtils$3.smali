.class public Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;
.super Landroid/database/ContentObserver;
.source "CoverTestModeUtils.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$3;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$mgetTestVisibleRectFromSetting(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->-$$Nest$sfputsCurrentTestVisibleRect(Landroid/graphics/Rect;)V

    return-void
.end method
