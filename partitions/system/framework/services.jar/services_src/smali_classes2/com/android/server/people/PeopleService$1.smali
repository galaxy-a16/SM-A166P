.class public Lcom/android/server/people/PeopleService$1;
.super Landroid/app/people/IPeopleManager$Stub;
.source "PeopleService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-direct {p0}, Landroid/app/people/IPeopleManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 233
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getStartTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 237
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V

    return-void

    .line 235
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start time must be in the past"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 244
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/DataManager;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 251
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 283
    iget-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "PeopleService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/people/PeopleService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final enforceHasReadPeopleDataPermission()V
    .locals 1

    .line 217
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_PEOPLE_DATA"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller doesn\'t have READ_PEOPLE_DATA permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get conversation"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get last interaction"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRecentConversations()Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "get recent conversations"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/server/people/data/DataManager;->getRecentConversations(I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 259
    invoke-static {}, Lcom/android/server/people/PeopleService;->-$$Nest$smisSystemOrRoot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 262
    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 263
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService$1;->enforceHasReadPeopleDataPermission()V

    .line 212
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)I

    .line 213
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/people/data/DataManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "register conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    new-instance v0, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v0, p4}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->addConversationListener(Lcom/android/server/people/PeopleService$ListenerKey;Landroid/app/people/IConversationListener;)V

    return-void
.end method

.method public removeAllRecentConversations()V
    .locals 1

    const-string/jumbo v0, "remove all recent conversations"

    .line 204
    invoke-static {v0}, Lcom/android/server/people/PeopleService;->-$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V

    .line 205
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/DataManager;->removeAllRecentConversations(I)V

    return-void
.end method

.method public removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "remove a recent conversation"

    .line 197
    invoke-static {v0}, Lcom/android/server/people/PeopleService;->-$$Nest$smenforceSystemOrRoot(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-static {p0}, Lcom/android/server/people/PeopleService;->-$$Nest$fgetmDataManager(Lcom/android/server/people/PeopleService;)Lcom/android/server/people/data/DataManager;

    move-result-object p0

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 198
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->removeRecentConversation(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method public unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    .locals 3

    .line 276
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "unregister conversation listener"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->removeConversationListener(Landroid/app/people/IConversationListener;)V

    return-void
.end method
