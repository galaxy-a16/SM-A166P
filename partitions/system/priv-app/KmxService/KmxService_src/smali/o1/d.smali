.class public final Lo1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Notification;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/work/impl/foreground/SystemForegroundService;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 0

    iput-object p1, p0, Lo1/d;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    iput p2, p0, Lo1/d;->a:I

    iput-object p3, p0, Lo1/d;->b:Landroid/app/Notification;

    iput p4, p0, Lo1/d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo1/d;->b:Landroid/app/Notification;

    iget v1, p0, Lo1/d;->c:I

    iget-object v2, p0, Lo1/d;->d:Landroidx/work/impl/foreground/SystemForegroundService;

    iget p0, p0, Lo1/d;->a:I

    invoke-static {v2, p0, v0, v1}, Lo1/f;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method
