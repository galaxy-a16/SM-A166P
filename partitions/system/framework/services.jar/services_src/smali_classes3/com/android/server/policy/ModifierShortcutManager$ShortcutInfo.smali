.class public final Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;
.super Ljava/lang/Object;
.source "ModifierShortcutManager.java"


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;->title:Ljava/lang/String;

    .line 395
    iput-object p2, p0, Lcom/android/server/policy/ModifierShortcutManager$ShortcutInfo;->intent:Landroid/content/Intent;

    return-void
.end method
