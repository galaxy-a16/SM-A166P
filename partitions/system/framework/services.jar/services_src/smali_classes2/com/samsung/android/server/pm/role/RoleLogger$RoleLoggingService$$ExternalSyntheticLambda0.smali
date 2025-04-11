.class public final synthetic Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    iput-object p2, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;

    iget-object p0, p0, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService$$ExternalSyntheticLambda0;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, p0}, Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;->$r8$lambda$WVFPHzWJa2_o5iVk-dElZaRkJlE(Lcom/samsung/android/server/pm/role/RoleLogger$RoleLoggingService;Landroid/app/job/JobParameters;)V

    return-void
.end method
