.class public final synthetic Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/IUnsafeIntentStrictModeCallback;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Landroid/app/ActivityManagerInternal;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;Landroid/app/ActivityManagerInternal;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$0:Landroid/app/IUnsafeIntentStrictModeCallback;

    iput-object p2, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$2:Landroid/app/ActivityManagerInternal;

    iput p4, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$0:Landroid/app/IUnsafeIntentStrictModeCallback;

    iget-object v1, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$2:Landroid/app/ActivityManagerInternal;

    iget p0, p0, Lcom/android/server/pm/ResolveIntentHelper$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/pm/ResolveIntentHelper;->$r8$lambda$6rLFK_Q8y2hQvjLWvMR03Q3PK0w(Landroid/app/IUnsafeIntentStrictModeCallback;Landroid/content/Intent;Landroid/app/ActivityManagerInternal;I)V

    return-void
.end method
