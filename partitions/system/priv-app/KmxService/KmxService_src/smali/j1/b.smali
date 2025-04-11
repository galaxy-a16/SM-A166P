.class public abstract Lj1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Alarms"

    invoke-static {v0}, Landroidx/work/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lj1/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lp1/j;I)V
    .locals 4

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lj1/c;->e:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_DELAY_MET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, p1}, Lj1/c;->d(Landroid/content/Intent;Lp1/j;)V

    const/high16 v2, 0x24000000

    invoke-static {p0, p2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/work/o;->d()Landroidx/work/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling existing alarm with (workSpecId, systemId) ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lj1/b;->a:Ljava/lang/String;

    invoke-virtual {v1, p2, p1}, Landroidx/work/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lp1/j;J)V
    .locals 4

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->e()Lp1/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lp1/i;->a(Lp1/j;)Lp1/g;

    move-result-object v1

    if-eqz v1, :cond_0

    iget p1, v1, Lp1/g;->c:I

    invoke-static {p0, p2, p1}, Lj1/b;->a(Landroid/content/Context;Lp1/j;I)V

    goto :goto_0

    :cond_0
    new-instance v1, Ld/s0;

    invoke-direct {v1, p1}, Ld/s0;-><init>(Landroidx/work/impl/WorkDatabase;)V

    iget-object p1, v1, Ld/s0;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/work/impl/WorkDatabase;

    new-instance v2, Lh5/b;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lh5/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "workDatabase.runInTransa\u2026ANAGER_ID_KEY)\n        })"

    invoke-static {p1, v1}, Li4/f;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v1, Lp1/g;

    iget-object v2, p2, Lp1/j;->a:Ljava/lang/String;

    iget v3, p2, Lp1/j;->b:I

    invoke-direct {v1, v2, v3, p1}, Lp1/g;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lp1/i;->b(Lp1/g;)V

    :goto_0
    invoke-static {p0, p2, p1, p3, p4}, Lj1/b;->c(Landroid/content/Context;Lp1/j;IJ)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lp1/j;IJ)V
    .locals 3

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lj1/c;->e:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_DELAY_MET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, p1}, Lj1/c;->d(Landroid/content/Intent;Lp1/j;)V

    const/high16 p1, 0xc000000

    invoke-static {p0, p2, v1, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {v0, p1, p3, p4, p0}, Lj1/a;->a(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
