.class public Lcom/android/server/am/ActivityManagerConstants$2;
.super Ljava/lang/Object;
.source "ActivityManagerConstants.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerConstants;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerConstants;)V
    .locals 0

    .line 1268
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants$2;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    .line 1271
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "enable_experimental_component_alias"

    .line 1275
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "component_alias_overrides"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants$2;->this$0:Lcom/android/server/am/ActivityManagerConstants;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->-$$Nest$mupdateComponentAliases(Lcom/android/server/am/ActivityManagerConstants;)V

    goto :goto_0

    :cond_2
    return-void
.end method
