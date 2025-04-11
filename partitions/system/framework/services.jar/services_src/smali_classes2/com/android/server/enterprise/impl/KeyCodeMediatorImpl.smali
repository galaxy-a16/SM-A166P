.class public Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;
.super Ljava/lang/Object;
.source "KeyCodeMediatorImpl.java"

# interfaces
.implements Lcom/android/server/enterprise/common/KeyCodeMediator;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;

.field public final mRestrictedKeyCodeBackup:Ljava/util/Map;

.field public final mRestrictionCallbacks:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;-><init>(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    .line 72
    iput-object p1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;

    .line 73
    invoke-interface {p1, p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final block(I)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getWindowManagerAdapter()Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;->blockKeyCode(I)V

    return-void
.end method

.method public final clear(I)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getWindowManagerAdapter()Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;->clearAllConfiguration(I)V

    return-void
.end method

.method public final getAllRestrictedKeyCodes()Ljava/util/Set;
    .locals 3

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 163
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 164
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 165
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getWindowManagerAdapter()Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;
    .locals 0

    .line 130
    const-class p0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    .line 131
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public handleKeyCode(I)Z
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->hasPreviousConfigurations(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->clear(I)V

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->needToBlock(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->block(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 103
    iget p1, p1, Landroid/os/Message;->what:I

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->handleKeyCode(I)Z

    move-result p0

    return p0
.end method

.method public final hasPreviousConfigurations(I)Z
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getWindowManagerAdapter()Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/enterprise/adapter/IWindowManagerAdapter;->hasConfigurations(I)Z

    move-result p0

    return p0
.end method

.method public final needToBlock(I)Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;

    .line 137
    invoke-interface {v1, p1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->isKeyCodeInputAllowed(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be blocked by "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-interface {v1}, Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyCodeMediator"

    .line 139
    invoke-interface {p0, v0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;->knoxSdkFileLogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onAdminRemoved(I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 173
    iget-object v1, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getAllRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v0

    .line 158
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictedKeyCodeBackup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSystemReady()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->getAllRestrictedKeyCodes()Ljava/util/Set;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->update(I)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/server/enterprise/common/KeyCodeRestrictionCallback;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mRestrictionCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(I)Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;

    invoke-interface {v0, p0}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;->getHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl;->mInjector:Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update for keycode :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyCodeMediator"

    invoke-interface {p0, v0, p1}, Lcom/android/server/enterprise/impl/KeyCodeMediatorImpl$KeyCodeMediatorInjector;->knoxSdkFileLogW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
