.class public Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;
.super Landroid/database/ContentObserver;
.source "AODClockFilter.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-static {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->-$$Nest$mgetAODClockType(Lcom/android/server/am/mars/filter/filter/AODClockFilter;)V

    return-void
.end method
