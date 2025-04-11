.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 219
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$6;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mupdateCoverAttachState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZLcom/samsung/android/cover/CoverState;)V

    return-void
.end method
